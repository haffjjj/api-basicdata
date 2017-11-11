<?php 
header('Access-Control-Allow-Origin: *'); 

// if(isset($_POST['messasge'])){  
//     $array = [
//         'message' => 'sukses'
//     ];
    
//     $json = [$array];
//     echo json_encode($json);
//     }
// else{
//     $array = [
//         'message' => 'gagal'
//     ];
    
//     $json = [$array];
//     echo json_encode($json);
// }

var_dump(file_get_contents("php://input"));
?>