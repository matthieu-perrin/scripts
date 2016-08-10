#!/bin/bash
#
############################################################################
# script BACKUP                                                            #
# auteur : Jean MORALES ET Christophe TRIOMPHE                             #
# version 0 du 15/06/10                                                    #
# version 1 du 24/08/10 : correction suppression des anciennes sauvegardes #
# version 2 du 09/09/10 : suppression des copies FTP avec yafc             #
# version 3 du 21/02/11 : Ajout de la mensualisation et rotation           #
# version 4 du 09/06/11 : Adaptation au nouveau serveur Nagios-MII         #
# modif MPE du 27/07/16 : externalisation des mots de passe + bkp scripts  #
# modif MPE du 28/07/16 : reorganisation du script HEAT(91800)             #
#                                                                          #
# description :                                                            #
# script permettant la sauvegarde de toutes les bases de donnees mysql     #
# du serveur central Nagios                                                #
############################################################################

# authentification
. /etc/db_info.conf
. /etc/nas_info.conf

echo "===================================================================="
echo "Sauvegarde ${localhost}"
date
echo " "
#Definition des Variables
. /usr/local/scripts/backup/backup.conf

Mysql_User=${db_user}
Mysql_Paswd=${db_passwd}
Mysql_host=${db_host}
# Emplacemment des different prog utilise
MYSQL=$(which mysql)
MYSQLDUMP=$(which mysqldump)
CHOWN=$(which chown)
CHMOD=$(which chmod)
GZIP=$(which gzip)
# Emplacemment du dossier de backup local
DEST=$BKPDIR/backup
#Rep ou on dispose les sauvegardes sql
DEST_mysql=$DEST/mysql
#Date du jour
NOW=$(date +"%d")
# Databases a ne pas sauvegarder separer par des espaces
IGGY=""
# On initialise les variables
FILE=""
DBS=""
#Variable du FTP
SRV_NAS=${nas_host}
UTILISATEUR=${nas_user}
MOT_DE_PASSE=${nas_passwd}
PORT='21'

BKPLOCL=$DEST/usr/local
BKPSQL=$DEST/mysql

mkdir -p $BKPDIR

###########################################################################

archive()
{
	nom=$(basename ${1})
	tar -cf $nom.$NOW.tar ${1}
	gzip $nom.$NOW.tar
}

init_backup()
{
	# Arret des enregistrements de donnees Centreon
	echo "   Arret censtorage "
	#/etc/init.d/centstorage stop
	
	if [ -f ${LISTSRV} ]; then
		while read service  
		do  
			if [ -f /etc/init.d/${service} ]; then
				/etc/init.d/${service} stop
			fi
		done < ${LISTSRV}
	fi
}

end_backup()
{
	# Redemarrage des enregistrements
	echo "   Lancement censtorage "
	#/etc/init.d/centstorage start
	
	if [ -f ${LISTSRV} ]; then
		while read service  
		do  
			if [ -f /etc/init.d/${service} ]; then
				/etc/init.d/${service} start
			fi
		done < ${LISTSRV}
	fi
}

rotate_log()
{
	## test de la taille du fichier de log
	if [ -f $FICHIER_LOG ]; then
			TAILLE_LOG=$(ls -n $FICHIER_LOG | awk -F " " '{print $5}')
			if [ ${TAILLE_LOG} -ge 100000 ]; then
					mv -f $FICHIER_LOG ${FICHIER_LOG}.1
			fi
	fi
}

dump_database()
{
	# On liste les bases de donnees
	DBS="$($MYSQL -u $Mysql_User -h $Mysql_host -p$Mysql_Paswd -Bse 'show databases')"

	for db in $DBS
	do
	skipdb=-1
	if [ "$IGGY" != "" ]; then
		for i in $IGGY
		do
			[ "$db" == "$i" ] && skipdb=1 || :
		done
	fi

	if [ "$skipdb" == "-1" ] ; then
		echo "  Backup de la base "$db"  "
		FILE="$DEST_mysql/$db.$NOW.gz"
		# On boucle, et on dump toutes les bases et on les compresse
		$MYSQLDUMP --lock-tables=false --complete-insert=true -u $Mysql_User -h $Mysql_host -p$Mysql_Paswd $db | $GZIP -9 > $FILE
	fi
	done

}

is_online()
{
	## test presence du central
	/bin/ping -q -c 3 $1 > /dev/null
	if [ $? != 0 ]; then
		echo 0
	else
		echo 1
	fi
}

export_ftp()
{

ftp -i -n $SRV_NAS $PORT << EOF
quote user $UTILISATEUR
quote pass $MOT_DE_PASSE
binary

lcd $BKPLOCL/
cd $FTPBKPLOCL
mput *
lcd /$BKPSQL/
cd $FTPBKPSQL
mput *
bye
EOF

}

remove_old_backup()
{
	#Ajout C.TRIOMPHE
	#Suppression de toute les sauvegardes de plus de 30 jours
	if [ "$MENSUEL" != "Y" ]; then
			echo "Sauvegarde Journaliere, rotation sur le mois "
			rm -r $DEST_mysql/*.$NOW.gz > /dev/null 2>&1
			rm $BKPLOCL/*.$NOW.tar.gz > /dev/null 2>&1
	  else
			echo "Sauvegarde Complete  Mensuelle"
	fi

}

###########################################################################

##### MAIN #####

#Activation de la sauvegarde mensuelle le cas echeant
if [ "$NOW" = "01" ]; then
        NOW="$(date +"%Y-%m-%d")"
        MENSUEL="Y"
fi

rotate_log

echo "backup mysql "
init_backup

remove_old_backup

#on cree le rep
mkdir -p $DEST_mysql

dump_database

end_backup

echo "--------------------------------------------------------------------"
echo "  Backup des repertoires centreon et nagios   "
date
echo " "

# Backup des repertoires Nagios et Centreon
mkdir -p $BKPLOCL

cd $BKPLOCL


if [ -f "${LISTDIR}" ]; then
	while read repertoire  
	do  
		if [ -d "${repertoire}" ]; then
			archive ${repertoire} 
		fi
	done < ${LISTDIR}
fi

echo "--------------------------------------------------------------------"
echo "  Copie des sauvegardes sur le NAS  "
date
echo " "

online=$(is_online $SRV_NAS)

if [ "${online}" -eq 1 ]; then
	export_ftp
	rm -Rf /$BKPLOCL/*
	rm -Rf /$BKPSQL/*
fi

echo "Termine"
date
echo "===================================================================="
exit 0
