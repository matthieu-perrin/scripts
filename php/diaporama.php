<?php
// Matthieu 05 Mai 2019

// variables
//$titre = "Copenhague 2019";
$titre = basename(getcwd());
$repertoire    = '.';
$listefichier = array();
$listeimage = array();
$numero = 0;

// Recupere la variable GET numero
if(isset($_GET['numero'])) 
{
	$numero_tmp = htmlspecialchars(stripslashes(trim($_GET['numero'])));
	if ( is_numeric($numero_tmp) )
	{
		$numero = $numero_tmp;
	}
}
//print($numero);

// Liste dans -listefichier- les fichiers present dans -repertoire-
function listedir(&$listefichier, &$repertoire)
{
	$repertoire = opendir("."); 
	while ($f = readdir($repertoire)) 
	   {
		array_push($listefichier, $f);
	   }
	closedir($repertoire);
}

// Liste dans -listeimage- les fichiers present contenant -jpg- dans -listefichier-
function listejpg(&$listefichier, &$listeimage)
{
	foreach ($listefichier as $fichier)
	{
		if (strpos($fichier, 'jpg') !== false) 
		{
			array_push($listeimage, $fichier);
		}	
	}
}

listedir($listefichier, $repertoire);
listejpg($listefichier, $listeimage);

// Nombre d images
$nombre = count($listeimage);
$suivant = $numero+1;
$precedent = $numero-1;

// Reset a la fin 
if ( $suivant >= $nombre) { $suivant = 0; }
//print($nombre);

$img = array_slice($listeimage, $numero, 1);
$imgsuivante = array_slice($listeimage, $suivant, 1);

//print_r($listefichier);
//print_r($listeimage);

?>
<html>
<head>
<meta http-equiv="refresh" content="5; URL=diaporama.php?numero=<?php print($suivant);  ?> ">
</head>

<title><?php print($titre); ?></title>
<body>

 <center>
 <h2><?php print($titre); ?></h2>
 
<a href=diaporama.php?numero=<?php print($precedent); ?>>precedent</a>
<a href=diaporama.php>retour</a>
<a href=diaporama.php?numero=<?php print($suivant); ?>>suivant</a>
<br/>
<img src="<?php echo $img[0]; ?>" border="0">
<img src="<?php echo $imgsuivante[0]; ?>" border="0" width="0" height="0">
</center>

</body>
