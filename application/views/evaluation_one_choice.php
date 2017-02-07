<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>



      <table>

		      <tr>
			      <th class="title">Choix</th>
			      <th class="eval"></th>							
		      </tr>

        <?php foreach ($choices as $c):?>
		      <tr>
		        <td class="choice"><p class="title"><?php echo $c->title; ?></p><p class="description"><?php echo add_br($c->description); ?></p></td>
		        <td class="eval"><input type="radio" name="choice" value="<?php echo $c->id_choice; ?>"></td>
		      </tr>
        <?php endforeach;?> 
	
      </table>




