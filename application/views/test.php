<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
    <script>
      num = 0;
      
      function flash_aide(){
        $("#aide").fadeOut(100);
        $("#aide").fadeIn(500);
      }
      
      function init(){
      
        num = 0;
        $("#aide").html('Cliquez sur <span id="num"> 3 </span> les propositions pour définir votre ordre de préference');
      }
      

      $(document).ready(function() {

          init();
       
          $('#questions li').on({
              // au clic sur un élément
              click: function() {
                  
                  if(num==3){
                    flash_aide();
                    return;
                  }
                  
                  if (num<3 && $(this).find("input").val()=="") {
                    $(this).find("input").val(++num);
                    $("#num").text(3-num);
                  }
                  
                  if(num==3){
                    $("#aide").text("Cliquez sur suivant pour valider");
                  }

              }
          });
       
          
          $( "#reset" ).on({
            click: function() {   

               init();

            }
          });
          
          $( "form" ).submit(function() {
            if ( num > 0 ) {

              return;
            }
            
            flash_aide();
           
            event.preventDefault();
          }); 
          

      });
    </script>

    <h1>Quel Revenu de base me correspond le mieux ?</h1>

    <h2>Question <?php echo $question->place." : ".$question->title ; ?></h2>
    
    <p id="aide"></p>

    <h3><?php echo $question->description ; ?></h3>

    <?php echo form_open('questionnaire/save_test'); ?>

    <ul id="questions">
	       
	    <?php $i = 0 ; ?>
      <?php foreach ($choices as $c):?>
	      <li draggable=true>
			     <?php echo form_input((string)$c->id_choice, '', array('autocomplete'  => 'off') ); ?> <span class="title"> <?php echo $c->title; ?> </span>
        </li>
      <?php endforeach;?>  	
	
    </ul>

    <?php

	    echo form_hidden("id_question", $question->id_question);
	    echo form_hidden("n_question", $question->place);	
	
	    foreach ($rating as $i => $val){
		    echo form_hidden("$i", $val);		
	    }	
	
    ?>

    <button type="reset" id="reset" class="btn">Reinitialiser</button>  
    <button type="submit" id="submit" class="btn btn-success">Suivant</button>
  

</form>

<p><a href="test"> Recommencer le test </a></p>


