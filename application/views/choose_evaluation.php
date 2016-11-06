<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<link href="<?php echo base_url("assets/css/evaluation.css"); ?>" rel="stylesheet">
	<title><?php echo $title ; ?></title>
</head>
<body>

<h1>Evaluer un révenu de base</h1>


<?php

		foreach ($result as $r){
			echo '<a href="'."?id_result=$r->id_result".'">'.$r->title.'</p>';	
		}

?>


</body>
</html>
