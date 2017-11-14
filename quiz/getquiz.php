<?php

header('Access-Control-Allow-Origin: *'); 

require_once "../config.php";

if(isset($_GET['id'])){
    $core->table = "quiz";
    $core->where = "WHERE id_level = ?";
    $core->data = [$_GET['id']];
    
    $result = $core->read();
    
    echo json_encode($result,TRUE);
}
else{
    echo 'ZRTHR Team 17';
}

?>