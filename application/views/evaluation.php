<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

  <h1>Evaluation du <?php echo $result->title ; ?></h1>

  <h2>Question <?php echo $question->place." : ".$question->title ; ?></h2>

  <?php echo form_open('questionnaire/save_evaluation'); ?>

      <table>

		      <tr>
			      <th class="title">Correspond</th>
			      <th class="eval">Pas du tout</th>
			      <th class="eval">Un peu</th>
			      <th class="eval">Beaucoup</th>							
		      </tr>

        <?php foreach ($choices as $c):?>
		      <tr>
		        <td><?php echo $c->title; ?></td>
		        <td class="eval"><input type="radio" name="<?php echo $c->id_choice; ?>" value="1"></td>
		        <td class="eval"><input type="radio" name="<?php echo $c->id_choice; ?>" value="3"></td>
		        <td class="eval"><input type="radio" name="<?php echo $c->id_choice; ?>" value="5"></td>	
		      </tr>
        <?php endforeach;?> 
	
      </table>

      <?php

	      echo form_hidden("id_result", $result->id_result);
	      echo form_hidden("id_question", $question->id_question);
	      echo form_hidden("n_question", $question->place);	
	
      ?>

    <button type="submit" class="btn btn-success">Suivant</button>

  </form>


