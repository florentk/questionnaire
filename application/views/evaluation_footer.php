<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

      <?php

	      echo form_hidden("id_result", $result->id_result);
	      echo form_hidden("id_question", $question->id_question);
	      echo form_hidden("n_question", $question->place);	
	      echo form_hidden("pass", $pass);		      
	
      ?>

    <button type="submit" class="btn btn-success">Suivant</button>

  </form>
</div>  
