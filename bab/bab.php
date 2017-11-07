<?php 
header('Access-Control-Allow-Origin: *'); 

require_once "../config.php";

$core->table = "materi_bab";

echo json_encode($core->read(),TRUE);

?>