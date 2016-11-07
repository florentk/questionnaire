<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

  <h1><?php echo $title ; ?></h1>

  <h2>Pas encore évalué</h2>
  <ul>
  <?php foreach ($result as $r):?>
    <?php if(!$r->is_eval): ?>
		  <li><a href="?id_result=<?php echo $r->id_result ; ?>"> <?php echo $r->title ; ?> </a> </li>	
		<?php endif; ?>
  <?php endforeach;?> 
  </ul>


  <h2>Déjà évalué</h2>
  <ul>
  <?php foreach ($result as $r):?>
    <?php if($r->is_eval): ?>
		  <li><a href="?id_result=<?php echo $r->id_result ; ?>"> <?php echo $r->title ; ?> </a> </li>	
		<?php endif; ?>		  
  <?php endforeach;?> 
  </ul>



