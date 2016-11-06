<?php
defined('BASEPATH') OR exit('No direct script access allowed');
header("Cache-Control: max-age=1");

class Questionnaire extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('EvaluationModel');
	  $this->load->helper('url');
  }

  private function view_evaluation($id_result,$n_question) {
  
		$result = $this->EvaluationModel->getResult($id_result);
		$question = $this->EvaluationModel->getQuestion(2,$n_question);

		$data['title'] = "Evaluation d'un Revenu de base";
		$data['result'] = $result;	
		
		$this->load->view('header',$data);	
		
		if(isset($question)){
			$choices = $this->EvaluationModel->getChoicesFromQuestion($question->id_question);
		
			$data['question'] = $question;
			$data['choices'] = $choices	;		
			
	  		$this->load->helper('form');
			$this->load->view('evaluation',$data);
		}else{
			$this->load->view('evaluation_end',$data);
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
			
	    $this->load->helper('form');
			$this->load->view('test',$data);
		}else{
			$data['scores'] = $this->EvaluationModel->computeScores($rating);

			$this->load->view('test_end',$data);
		}
		
		$this->load->view('footer',$data);

	}	
	
	public function choose_evaluation() {
	
		$data['result'] = $this->EvaluationModel->getResults();
		$data["title"] = "Evaluation d'un revenu de base";
		
		$this->load->view('header',$data);
		$this->load->view('choose_evaluation',$data);
		$this->load->view('footer');		
	}
	
	//index.php/questionnaire/evaluation/?id_result=N
	public function evaluation()
	{
		$id_result = $this->input->get("id_result");	
		
		if(isset($id_result))
			$this->view_evaluation($id_result,1);
		else
			$this->choose_evaluation();
	}
	
	//index.php/questionnaire/test/
	public function test()
	{
		$this->view_test(1);	
	}	
	
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

	//index.php
	public function index()
	{
		show_404();
	}
	



	public function save_test()
	{
		$id_question = $this->input->post("id_question");	
		$n_question = $this->input->post("n_question");			
		
		$choices = $this->EvaluationModel->getChoicesFromQuestionnaire(2);
		
		if(isset($choices)) {
			$rating = array();
			foreach ($choices as $c){
				$rate = $this->input->post("$c->id_choice");
				
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
		
		$choices = $this->EvaluationModel->getChoicesFromQuestion($id_question);
		
		if(isset($choices)) {
		
			foreach ($choices as $c){
				$eval = $this->input->post("$c->id_choice");
				
				if(isset($eval)){
					$this->EvaluationModel->setEvaluation($id_result,$c->id_choice,(int) $eval);
				} else {
					$this->view_evaluation($id_result,$n_question);
					return;
				}			
			}
			
		}
			
		$this->view_evaluation($id_result,$n_question + 1);		
	}

}
?>
