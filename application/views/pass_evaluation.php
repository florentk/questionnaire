<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
  <h1><?php echo $title ; ?></h1>
  
  <form method="get" accept-charset="utf-8" action="evaluation">

  <p>
    <?php
      echo form_label('Code d\'accès');
      echo form_hidden("id_result", $id_result);
      echo form_input('pass');
    ?>
  </p>
  <button type="submit" class="btn btn-success">Evaluer</button>
  
</form>
