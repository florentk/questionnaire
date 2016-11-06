<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

    <h1>Quel Revenu de base me correspond le mieux ?</h1>

    <h2>Question <?php echo $question->place." : ".$question->title ; ?></h2>

    <h3><?php echo $question->description ; ?></h3>

    <?php echo form_open('questionnaire/save_test'); ?>

    <ul>
	       
	
      <?php foreach ($choices as $c):?>
	      <li>
			     <?php echo form_input((string)$c->id_choice, '0'); ?> <span class="title"> <?php echo $c->title; ?> </span>
        </li>
      <?php endforeach;?>  	
	
    </ul>

    <?php

	    echo form_hidden("id_question", $question->id_question);
	    echo form_hidden("n_question", $question->place);	
	
	    foreach ($rating as $i => $val){
		    echo form_hidden("$i", $val);		
	    }	
	
    ?>

    <button type="submit" class="btn btn-success">Suivant</button>

</form>


