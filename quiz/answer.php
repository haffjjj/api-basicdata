<?php

header('Access-Control-Allow-Origin: *'); 

require_once "../config.php";

if(isset($_GET['id'])){
    $core->table = "quiz";
    $core->where = "WHERE id_level = ?";
    $core->data = [$_GET['id']];
    
    $getquiz = $core->read();
    
    $answer = [];
    foreach ($getquiz as $value) {
        $answer[] = $value['answer'];
    }
    
    $quizanswer = [];
    for ($i=0; $i < count($getquiz); $i++) { 
        $quizanswer[] = ['quiz' => $getquiz[$i]['quiz'], 'answer' => $getquiz[$i][$answer[$i]]];
    }
    
    echo json_encode($quizanswer);
}
else{
    echo 'ZRTHR Team 17';
}

// scriptnya berat :3, masih kurang efisien
?>