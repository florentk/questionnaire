<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>


  <h2>Fin du test, merci d'avoir participé !</h2>
  <ul>
  
  <?php foreach ($scores as $res => $s):?>

    <li><a href="rdb_detail?id_rdb_result=<?php echo $s['id_result'];?>"><?php echo $s['title']." (".$s['score'].")";?></a></li>

  <?php endforeach;?>  

  </ul>

<a href="test"> Refaire le test </a>
