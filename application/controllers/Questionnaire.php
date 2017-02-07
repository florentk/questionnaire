<?php
defined('BASEPATH') OR exit('No direct script access allowed');
header("Cache-Control: max-age=1");

class Questionnaire extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('EvaluationModel');
	  $this->load->helper('url');
	  $this->load->helper('form');
  }

  private function view_evaluation($id_result,$n_question,$pass) {
  
    if(!$this->EvaluationModel->validPassEvaluation($id_result,$pass))
      return show_error("Erreur d'acces",403);
  
		$result = $this->EvaluationModel->getResult($id_result);
		$question = $this->EvaluationModel->getQuestion(2,$n_question);

		$data['title'] = "Evaluation d'un Revenu de base";
		$data['result'] = $result;	
		$data['pass'] = $pass;
		
		$this->load->view('header',$data);	
		
		if(isset($question)){
			$choices = $this->EvaluationModel->getChoicesFromQuestion($question->id_question);
		
			$data['question'] = $question;
			$data['choices'] = $choices	;		
			
			$this->load->view('evaluation_header',$data);			
			
			if($question->mode==1)
			  $this->load->view('evaluation_effects',$data);
			else if($question->mode==2)
			  $this->load->view('evaluation_binary',$data);
			else if ($question->mode==3)		
			  $this->load->view('evaluation_one_choice',$data);
		
			$this->load->view('evaluation_footer',$data);			
		}else{
			$this->load->view('evaluation_end',$data);
			$this->view_rdb_edit_detail($result->id_result_ext);
		}
		
		$this->load->view('footer',$data);

	}
	
  	private function view_test($n_question, $rating=array()) {
  
		$question = $this->EvaluationModel->getQuestion(2,$n_question);

		$data['title'] = "Questionnaire pour un Revenu de base";	
		$data['rating'] = $rating;
		
	  $this->load->view('header',$data);
		
		if(isset($question)){
			$choices = $this->EvaluationModel->getChoicesFromQuestion($question->id_question);
		
			$data['question'] = $question;
			$data['choices'] = $choices	;		
			
			$this->load->view('test',$data);
		}else{
			$data['scores'] = array_slice($this->EvaluationModel->computeScores($rating), 0, 3);

			$this->load->view('test_end',$data);
		}
		
		$this->load->view('footer',$data);

	}	
	
	private function choose_evaluation() {
	
		$data['result'] = $this->EvaluationModel->getResults();
		$data["title"] = "Evaluation d'un revenu de base";
		
		$this->load->view('header',$data);
		$this->load->view('choose_evaluation',$data);
		$this->load->view('footer');		
	}
	
	private function pass_evaluation($id_result) {
	
		$data['id_result'] = $id_result;
		$data["title"] = "Evaluation d'un revenu de base";
		
		$this->load->view('header',$data);
		$this->load->view('pass_evaluation',$data);
		$this->load->view('footer');		
	}	
	
	private function get_choice_eval($question,$c)
	{
			if($question->mode==1)
			  return $this->input->post("$c->id_choice");
			else if($question->mode==2)
			  return $this->input->post("$c->id_choice");
			else if ($question->mode==3){	
				$choice = $this->input->post("choice");
				
				if(isset($choice)){
					if($choice == $c->id_choice)	
						return 3;
					else
						return 0;
				}
				return;
			}
			
	}	
	
	
	private function view_rdb_edit_detail($id_rdb_result){
	  if($id_rdb_result==NULL){
       $id_rdb_result = $this->input->post("id_rdb_result");
       if($id_rdb_result==NULL){
        show_error("Parametre incorect", 406);
        return;
       }else {
 	      $supporting = $this->input->post("supporting");
	      $name = $this->input->post("name");
	      $motivation = $this->input->post("motivation");
	      $sum = $this->input->post("sum");
	      $use_case = $this->input->post("use_case");
	      $funding = $this->input->post("funding");
	      $reforms = $this->input->post("reforms");
	      $philosophy = $this->input->post("philosophy");
	      $allocations = $this->input->post("allocations");
	      $links = $this->input->post("links");  
	      
	      $this->EvaluationModel->setResultDetail($id_rdb_result, $supporting, $name, $motivation, $sum, $use_case, $funding, $reforms, $philosophy, $allocations, $links);
	            
       }
	  }
	  
	  $detail = $this->EvaluationModel->getResultDetail($id_rdb_result);  

	  $data["rdb"] = $detail;	 
	
		$this->load->view('edit_detail',$data);
	}	
	
	///////////////////////////////////////
	// PAGES
	
	//index.php/questionnaire/evaluation/?id_result=N
	public function evaluation()
	{
		$id_result = $this->input->get("id_result");	
		$pass = $this->input->get("pass");			
		
		if(isset($id_result) && isset($pass))
			$this->view_evaluation($id_result,1,$pass);
		else if(isset($id_result))
			$this->pass_evaluation($id_result);
	  else
	    $this->choose_evaluation();
	}
	
	//index.php/questionnaire/test/
	public function test()
	{
		$this->view_test(1);	
	}	
	
	
	//index.php/questionnaire/rdb_detail/
	public function rdb_detail() 
	{
		$id_rdb_result = $this->input->get("id_rdb_result");	
		$detail = $this->EvaluationModel->getResultDetail($id_rdb_result);
		
		$data["rdb"] = $detail;
		$data["title"] = "Detail de $detail->name par $detail->supporting";
		
		$this->load->view('header',$data);
		$this->load->view('result_detail',$data);
		$this->load->view('footer');		
	}
	
	//index.php/questionnaire/rdb_edit_detail?id_rdb_result=id
	public function rdb_edit_detail() 
	{
		$data["title"] = "Detail d'une version";
		$this->load->view('header',$data);
		$this->view_rdb_edit_detail($this->input->get("id_rdb_result"));
		$this->load->view('footer');	

	}
	
	//index.php/questionnaire/rdb_tab/
	public function rdb_tab()
	{

		$versions = $this->EvaluationModel->getAllResultDetail();
		
		$data["versions"] = $versions;
		$data["title"] = "Résumé des versions d'un revenu de base";
		
		$this->load->view('header',$data);
		$this->load->view('result_tab',$data);
		$this->load->view('footer');	
	
	//
	}	

	//index.php
	public function index()
	{
		show_404();
	}
	

	
	//
  ////////////////////////////////////////////////
  
  ////////////////////////////////////////////////
	// API

	public function save_test()
	{
		$id_question = $this->input->post("id_question");	
		$n_question = $this->input->post("n_question");			
		
		$choices = $this->EvaluationModel->getChoicesFromQuestionnaire(2);
		
		if(isset($choices)) {
			$rating = array();
			foreach ($choices as $c){
				$rate = $this->input->post("$c->id_choice");
				//echo "<p>".$rate."</p>";
				if(isset($rate)){
					$rating += array("$c->id_choice" => $rate);
				} 		
			}
			$this->view_test($n_question + 1, $rating);	
			
		}
		
	
	}
	
	public function save_evaluation()
	{
		$id_result = $this->input->post("id_result");
		$id_question = $this->input->post("id_question");	
		$n_question = $this->input->post("n_question");	
		$pass = $this->input->post("pass");			
  
    if(!$this->EvaluationModel->validPassEvaluation($id_result,$pass))
      return show_error("Erreur d'acces",403);
  
		$result = $this->EvaluationModel->getResult($id_result);
		$question = $this->EvaluationModel->getQuestion(2,$n_question);

		$data['title'] = "Evaluation d'un Revenu de base";
		$data['result'] = $result;	
		$date['pass'] = $pass;
		
		$choices = $this->EvaluationModel->getChoicesFromQuestion($id_question);
		
		if(isset($choices)) {
		
			foreach ($choices as $c){
				$eval = $this->get_choice_eval($question,$c);
				
				if(isset($eval)){
					$this->EvaluationModel->setEvaluation($id_result,$c->id_choice,(int) $eval);
				} else {
					$this->view_evaluation($id_result,$n_question,$pass);
					return;
				}			
			}
			
		}
			
		$this->view_evaluation($id_result,$n_question + 1,$pass);		
	}
	//
  /////////////////////////////////////////////////
}
?>
