<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

  <h1>Evaluer un révenu de base</h1>



    <?php foreach ($result as $r):?>
			  <p><a href="?id_result=<?php echo $r->id_result ; ?>"> <?php echo $r->title ; ?> </p>	
    <?php endforeach;?> 





