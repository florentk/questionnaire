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


<h2>Fin du test, merci d'avoir participé !</h2>
<ul>
<?php
  		
  foreach($scores as $res => $s) {
    echo '<li><a href="rdb_detail?id_rdb_result='.$s['id_result'].'">'.$s['title']." ".$s['score']."</a></li>";
  }

?>
</ul>
</body>
</html>
