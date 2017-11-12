<?php

header('Access-Control-Allow-Origin: *'); 

require_once "../config.php";

$core->table = "quiz";

$result = $core->read();

echo json_encode($result,true);

?>