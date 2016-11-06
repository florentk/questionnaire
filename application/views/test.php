<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<link href="<?php echo base_url("assets/css/test.css"); ?>" rel="stylesheet">
	<title><?php echo $title ; ?></title>
</head>
<body>

<h1>Quel Revenu de base me correspond le mieux ?</h1>

<h2>Question <?php echo $question->place." : ".$question->title ; ?></h2>

<h3><?php echo $question->description ; ?></h3>



<?php echo form_open('questionnaire/save_test'); ?>

<table>
		<tr>
			<th class="pos">Position</th>			
			<th class="title">Question</th>
		</tr>
	   
	<?php

		foreach ($choices as $c){
			echo "<tr>";
			echo '<td class="pos">'.form_input((string)$c->id_choice, '0')."</td>";				
			echo '<td class="title">'.$c->title."</td>";	
			echo "</tr>";		
		}

	?>
	
</table>

<?php

	echo form_hidden("id_question", $question->id_question);
	echo form_hidden("n_question", $question->place);	
	
	foreach ($rating as $i => $val){
		echo form_hidden("$i", $val);		
	}	
	
?>

<button type="submit" class="btn btn-success">Envoyer</button>

</form>

</body>
</html>
