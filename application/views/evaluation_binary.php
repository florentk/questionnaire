<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>



      <table>

		      <tr>
			      <th class="title">Comprend</th>
			      <th class="eval">Oui</th>
			      <th class="eval">Non</th>							
		      </tr>

        <?php foreach ($choices as $c):?>
		      <tr>
		        <td class="choice"><p class="title"><?php echo $c->title; ?></p><p class="description"><?php echo add_br($c->description); ?></p></td>
		        <td class="eval"><input type="radio" name="<?php echo $c->id_choice; ?>" value="2"></td>
		        <td class="eval"><input type="radio" name="<?php echo $c->id_choice; ?>" value="4"></td>	
		      </tr>
        <?php endforeach;?> 
	
      </table>




