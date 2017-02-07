<?php
class EvaluationModel extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}


	public function getResult($id_result){
		$query = $this->db->get_where('result', array('id_result' => $id_result));
		return  $query->row();
	}

	public function getResults(){
	  $sql_eval_exist = "SELECT DISTINCT `rating` IS NOT NULL FROM `evaluation` WHERE evaluation.id_result=result.id_result";
	  $sql = "SELECT result.id_result,result.title, ($sql_eval_exist) AS is_eval FROM `result`";	
		$query = $this->db->query($sql);
		return  $query->result();
	}

	public function getQuestion($id_questionnaire,$place){
		$query = $this->db->get_where('question', array(
			'id_questionnaire' => $id_questionnaire,
			'place' => $place
		));
		return  $query->row();	
	}

	public function getChoicesFromQuestion($id_question){
		$query = $this->db->get_where('choice', array('id_question' => $id_question));
		return $query->result();
	}	
	
	public function getChoicesFromQuestionnaire($id_questionnaire){
		$query = $this->db->get('choice');
		return $query->result();
	}	

	public function getAllResultDetail(){
		$query = $this->db->get('result_rdb');
		return  $query->result();	
	}	
	
	public function getResultDetail($id_rdb_result){
		$query = $this->db->get_where('result_rdb', array('id_rdb_result' => $id_rdb_result));
		return  $query->row();	
	}
	
	public function setResultDetail($id_rdb_result, $supporting, $name, $motivation, $sum, $use_case, $funding, $reforms, $philosophy, $allocations, $links){
	
	  $this->db->replace('result_rdb', array('id_rdb_result' => $id_rdb_result,
	      'supporting'=>$supporting,
	      'name'=>$name,
	      'motivation'=>$motivation,
	      'sum'=>$sum,
	      'use_case'=>$use_case,
	      'funding'=>$funding,
	      'reforms'=>$reforms,
	      'philosophy'=>$philosophy,
	      'allocations'=>$allocations,
	      'links'=>$links
	    ));

	}	
	
	
	public function validPassEvaluation($id_result,$pass){
	  
	  if($pass==="")
	    return false;
	  
	  $query = $this->db->get_where('result', array(
	    'id_result' => $id_result,
	    'pass' => $pass
	  ));
	  	  
	  //echo $this->db->last_query();
	  	  		
		return ($query->num_rows()==1);
	}

	public function setEvaluation($id_result,$id_choice,$rating){
		$query = $this->db->get_where('evaluation', array(
			'id_result' => $id_result,
			'id_choice' => $id_choice));
		
		if($query->num_rows()>0){
			$id_eval = $query->row()->id_evaluation;
			$this->db->replace('evaluation', array(
				'id_evaluation' => $id_eval,
				'id_result' => $id_result,
				'id_choice' => $id_choice,
				'rating' => $rating
			));		
		} else {
			$this->db->insert('evaluation', array(
				'id_result' => $id_result,
				'id_choice' => $id_choice,
				'rating' => $rating
			));
		}
	}

  private function computeResultScore($id_result, $ranks){
  
    $score = 0;
		$query = $this->db->get_where('evaluation',array(
			'id_result' => $id_result));
		
		foreach ($query->result() as $eval){
		  $rating = $eval->rating;
		  $rank = $ranks[$eval->id_choice];
		  
		  if(isset($rank) && $rank > 0 && $rank < 4) {
		    $s = (4 - $rank) *  $rating;
		    $score += $s;
		    //echo "(".$s.",".(4 - $rank).",".$rating." ".")";
		  }
    } 
    return $score;
  }
  
  
	private function sortScores($v1,$v2)
	{
		$s1 = $v1['score'];
		$s2 = $v2['score'];
		if ($s1==$s2) return 0;
		return ($s1<$s2)?1:-1;
	}



//http://florent.kaisser.name/questionnaire/index.php/questionnaire/rdb_tab
 
  
  public function computeScores($ranks){
    $scores = array();
    
 		$query = $this->db->get('result');
		
		foreach ($query->result() as $res){   
		  $s = $this->computeResultScore($res->id_result, $ranks);
		  if($s >0)
				$scores += array( $res->id_result => 
											array( 
												'score' => $s,
												'title' => $res->title,
												'id_rdb_result' => $res->id_result_ext
				));
		}
		
		uasort($scores,array($this, "sortScores"));
    
    return $scores;
  }


}
?>

