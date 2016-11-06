<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

    <h1>Quel Revenu de base me correspond le mieux ?</h1>

    <h2>Question <?php echo $question->place." : ".$question->title ; ?></h2>

    <h3><?php echo $question->description ; ?></h3>

    <?php echo form_open('questionnaire/save_test'); ?>

    <table>
		    <tr>
			    <th class="pos">Position</th>			
			    <th class="title">Question</th>
		    </tr>
	       
	
      <?php foreach ($choices as $c):?>
	      <tr>
			    <td class="pos"> <?php echo form_input((string)$c->id_choice, '0'); ?> </td>		
			    <td class="title"> <?php echo $c->title; ?> </td>
        </tr>
      <?php endforeach;?>  	
	
    </table>

    <?php

	    echo form_hidden("id_question", $question->id_question);
	    echo form_hidden("n_question", $question->place);	
	
	    foreach ($rating as $i => $val){
		    echo form_hidden("$i", $val);		
	    }	
	
    ?>

    <button type="submit" class="btn btn-success">Suivant</button>

</form>


