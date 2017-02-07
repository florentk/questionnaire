<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function add_br($str) {
  return str_replace(array("\r\n", "\n", "\r"), '<br/>', $str);
}
?>


<table id="versions">

	<tr>
		<th>Nom</th>
		<th>Supporté par</th>
		<th>Motivation</th>
		<th>Mise en place</th>
		<th>Reformes</th>
		<th>Montant</th>
		<th>Philosophie</th>
		<th>Financement</th>
		<th>Allocations</th>
		<th>Liens</th>			
	</tr>
	
	<?php foreach ($versions as $rdb):?>
	<tr> 
		<td class="cell_small">  <a target="_blank" href="rdb_edit_detail?id_rdb_result=<?php echo $rdb->id_rdb_result;?>"> <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> <b><?php echo add_br($rdb->name) ?></b></a></td>
		<td class="cell_small"><?php echo add_br($rdb->supporting) ?></td>	
		<td class="cell_big"><?php echo add_br($rdb->motivation) ?></td>	
		<td class="cell_normal"><?php echo add_br($rdb->use_case) ?></td>	
		<td class="cell_big"><?php echo add_br($rdb->reforms) ?></td>	
		<td class="cell_small"><?php echo add_br($rdb->sum) ?></td>	
		<td class="cell_huge"><?php echo add_br($rdb->philosophy) ?></td>	
		<td class="cell_normal"><?php echo add_br($rdb->funding) ?></td>	
		<td class="cell_normal"><?php echo add_br($rdb->allocations) ?></td>	
		<td class="cell_small"><?php echo add_br($rdb->links) ?></td>	
	</tr>	
	<?php endforeach;?> 
	
</table>	
	

