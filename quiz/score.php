<?php 
header('Access-Control-Allow-Origin: *'); 

require_once "../config.php";

$core->table = "quiz_result";
$core->option = "ORDER BY id DESC LIMIT 10";
$score = $core->read();

echo json_encode($score);

?>