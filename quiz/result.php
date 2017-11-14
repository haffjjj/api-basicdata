<?php 
header('Access-Control-Allow-Origin: *'); 

require_once "../config.php";

$postdata = file_get_contents("php://input");

// var_dump($postdata);
// die;

if(isset($postdata)){

    $post = json_decode($postdata,true);

    $core->table = "quiz";
    $core->where = "WHERE id_level = ?";
    $core->data = [$post['id']];
    $quiztotal =  $core->count();
    $quiz = $core->read();

    $scoreplus = 100/$quiztotal;

    $score = 0;
    $correct = 0;
    
    foreach ($quiz as $value) {
        if(isset($post['quiz'][$value['id']])){
            if($post['quiz'][$value['id']] == $value['answer']){
                $score = $score + $scoreplus;
                $correct = $correct+1;
            }
            else{
                $score = $score + 0;
                $correct = $correct+0;
            }
        }
        else{
            $score = $score + 0;
            $correct = $correct+0;
        }
    }

    $core->table = "quiz_result";
    $core->where = null;
    $core->data = null;
    $core->values = "?,?,?,?";
    $core->data = ['',$post['id'],$post['username'],$score];
    $core->insert();

    $result = [
        'username' => $post['username'],
        'score' => $score,
        'correct' => $correct,
        'incorrect' => $quiztotal - $correct
    
    ];

    echo json_encode($result);
}
else{
    echo 'ZRTHR Team 17';
}

// jondescode v1
?>