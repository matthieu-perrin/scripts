#!/bin/bash
# MPE - 01/08/16

question()
{

valide=0

while [ $valide -eq 0 ]
do
	echo -n "$1"
	read $2
	eval rep='$'$2
	
	#echo "$1 $rep"
	echo -n "Est ce exacte (o/n) : "
	read v
	[ "$v" == "o" ] && valide=1
done

}

# DB
question "Adresse IP du serveur SQL : " db_host
question "Utilisateur du serveur SQL : " db_user
question "Mot de passe de l utilisateur : " db_passwd

echo "Creation de /etc/db_info.conf"
./config_db_info.sh "$db_host" "$db_user" "$db_passwd" > /etc/db_info.conf
chmod 600 /etc/db_info.conf
cat /etc/db_info.conf

# NAS
question "Adresse IP du serveur NAS : " nas_host
question "Utilisateur FTP du serveur NAS : " nas_user
question "Mot de passe de l utilisateur : " nas_passwd

echo "Creation de /etc/nas_info.conf"
./config_nas_info.sh "$nas_host" "$nas_user" "$nas_passwd" > /etc/nas_info.conf
chmod 600 /etc/nas_info.conf
cat /etc/nas_info.conf

# repertoire

rm -f /tmp/bkpdir.txt

fin=0

while [ $fin -eq 0 ]
do
	question "Repertoire a sauvegarder : " rep
	echo "$rep" >> /tmp/bkpdir.txt
	
	echo -n "Ajouter un autre repertoire (o/n) : "
	read f
	[ "$f" == "n" ] && fin=1
done

cat /tmp/bkpdir.txt > bkpdir.txt
echo bkpdir.txt


# services

rm -f /tmp/services.txt
fin=0

while [ $fin -eq 0 ]
do
	question "Services à arreter pendant la sauvegarde : " svc
	echo "$svc" >> /tmp/services.txt
	
	echo -n "Ajouter un autre service (o/n) : "
	read f
	[ "$f" == "n" ] && fin=1
done

cat /tmp/services.txt > services.txt
echo services.txt

