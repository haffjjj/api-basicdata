<?php 
header('Access-Control-Allow-Origin: *'); 

require_once "../config.php";

if(isset($_GET['id'])){
    $core->table = "quiz_result";
    $core->where = "WHERE id_quiz_level = ?";
    $core->option = "ORDER BY id DESC LIMIT 10";
    $core->data = [$_GET['id']];
    
    $result = $core->read();
    
    echo json_encode($result,TRUE);
}
else{
    echo 'ZRTHR Team 17';
}

?>