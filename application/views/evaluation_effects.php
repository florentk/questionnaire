<?php
defined('BASEPATH') OR exit('No direct script access allowed');



?>



      <table id="all_result">

		      <tr>
			      <th class="title">Effets attendus</th>
			      <th class="eval">Pas d'effet</th>
			      <th class="eval">Effets secondaire</th>
			      <th class="eval">Effets ciblés</th>							
		      </tr>

        <?php foreach ($choices as $c):?>
		      <tr>
		        <td class="choice"><p class="title"><?php echo $c->title; ?></p><p class="description"><?php echo add_br($c->description); ?></p></td>
		        <td class="eval"><input type="radio" name="<?php echo $c->id_choice; ?>" value="1"></td>
		        <td class="eval"><input type="radio" name="<?php echo $c->id_choice; ?>" value="3"></td>
		        <td class="eval"><input type="radio" name="<?php echo $c->id_choice; ?>" value="5"></td>	
		      </tr>
        <?php endforeach;?> 
	
      </table>




