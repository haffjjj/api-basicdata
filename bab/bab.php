<?php 
header('Access-Control-Allow-Origin: *'); 

require_once "../config.php";

$core->table = "bab_materi";

echo json_encode($core->read());

?>