<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div class="container">
  <h2>Fin du test, merci d'avoir participé !</h2>
  
  <p>Voilà les trois premieres versions qui correspondent à vos réponses :</p>
  
  <ul>
  
  <?php foreach ($scores as $res => $s):?>

    <li><a target="_blank" href="rdb_detail?id_rdb_result=<?php echo $s['id_rdb_result'];?>"><?php echo $s['title']." (".$s['score'].")";?></a></li>

  <?php endforeach;?>  

  </ul>

  <a href="test"> Refaire le test </a>
  
</div>
