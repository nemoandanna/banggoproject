<?php
    
    include 'DBHelper.php';
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
    header('Access-Control-Request-Headers:accept, content-type');
    $username = isset($_GET["username"]) ? $_GET["username"] : '';
    $sql = "select * from buycar where username='$username'";
    
    $result = query_oop($sql);
    
    echo json_encode($result, JSON_UNESCAPED_UNICODE);
    
?>