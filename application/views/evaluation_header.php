<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function add_br($str) {
  return str_replace(array("\r\n", "\n", "\r"), '<br/>', $str);
}

?>
<div class="container">
  <h1>Evaluation du <?php echo $title ; ?></h1>

  <h2>Question <?php echo $question->place." : ".$question->title ; ?></h2>
  
  <p class="question"><?php echo $question->description ?></p>

  <?php echo form_open('questionnaire/save_evaluation'); ?>
