<?php

header('Access-Control-Allow-Origin: *'); 

require_once "../config.php";

$core->table = "quiz_level";

$result = $core->read();

echo json_encode($result,true);

?>