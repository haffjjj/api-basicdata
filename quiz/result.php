<?php 
header('Access-Control-Allow-Origin: *'); 

require_once "../config.php";

$postdata = file_get_contents("php://input");
if(isset($postdata)){

    $post = json_decode($postdata,true);

    $core->table = "quiz";
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
    $core->values = "?,?,?";
    $core->data = ['',$post['username'],$score];
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

// copyright jondescode
?>