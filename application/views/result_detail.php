<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div class="container">
<h2><?php echo "$rdb->name" ?></h2>
<ul>
    <li>  <b> Supporté par </b> : <?php echo "$rdb->supporting" ?> </li>
    <li>  <b> Motivation </b> : <?php echo "$rdb->motivation" ?> </li>    
    <li>  <b> Mise en place </b> : <?php echo "$rdb->use_case" ?> </li>    
    <li>  <b> Reformes </b> : <?php echo "$rdb->reforms" ?> </li>    
    <li>  <b> Montant </b> : <?php echo "$rdb->sum" ?> </li>    
    <li>  <b> Philosophie </b> : <?php echo "$rdb->philosophy" ?> </li>    
    <li>  <b> Financement </b> : <?php echo "$rdb->funding" ?> </li>    
    <li>  <b> Allocations </b> : <?php echo "$rdb->allocations" ?> </li>    
    <li>  <b> Liens </b> : <?php echo "$rdb->links" ?> </li>    
</ul>

</div>
