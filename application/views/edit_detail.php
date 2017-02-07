<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div class="container">
  <div class="col-sm-12">
    <fieldset>
      <legend>Détail de la version</legend>

      <?php echo form_open('questionnaire/rdb_edit_detail','', array('id_rdb_result'=>$rdb->id_rdb_result)); ?>



        <div class="form-group row" >
          <label class="col-sm-2 control-label">Nom :</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="name" id="name" value="<?php echo set_value("name",$rdb->name); ?>">
          </div>
        </div>	
        
        <div class="form-group row" >
          <label class="col-sm-2 control-label">Supporté par :</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="supporting" id="supporting" value="<?php echo set_value("supporting",$rdb->supporting); ?>">
          </div>
        </div>	
        
        <div class="form-group row" >
          <label class="col-sm-2 control-label">Motivation :</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="motivation" id="motivation" value="<?php echo set_value("motivation",$rdb->motivation); ?>">
          </div>
        </div>	
        
        <div class="form-group row" >
          <label class="col-sm-2 control-label">Mise en place :</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="use_case" id="use_case" value="<?php echo set_value("use_case",$rdb->use_case); ?>">
          </div>
        </div>	
        
        <div class="form-group row" >
          <label class="col-sm-2 control-label">Reformes :</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="reforms" id="reforms" value="<?php echo set_value("reforms",$rdb->reforms); ?>">
          </div>
        </div>	
        
        <div class="form-group row" >
          <label class="col-sm-2 control-label">Montant :</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="sum" id="sum" value="<?php echo set_value("sum",$rdb->sum); ?>">
          </div>
        </div>	
        
        <div class="form-group row" >
          <label class="col-sm-2 control-label">Philosophie :</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="philosophy" id="philosophy" value="<?php echo set_value("philosophy",$rdb->philosophy); ?>">
          </div>
        </div>	
        
        <div class="form-group row" >
          <label class="col-sm-2 control-label">Financement :</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="funding" id="funding" value="<?php echo set_value("funding",$rdb->funding); ?>">
          </div>
        </div>	
        
        <div class="form-group row" >
          <label class="col-sm-2 control-label">Allocations :</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="allocations" id="allocations" value="<?php echo set_value("allocations",$rdb->allocations); ?>">
          </div>
        </div>	
        
        <div class="form-group row" >
          <label class="col-sm-2 control-label">Liens :</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="links" id="links" value="<?php echo set_value("links",$rdb->links); ?>">
          </div>
        </div>	
        


        <div class="form-group row">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-success">Enregistrer</button> 
          </div>
        </div>
      </form>
    </fieldset>
  </div>
</div>

