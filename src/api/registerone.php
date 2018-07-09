<?php
    
    include 'DBHelper.php';
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
    header('Access-Control-Request-Headers:accept, content-type');
    $username = isset($_POST["username"]) ? $_POST["username"] : '';
    $phoneNum = isset($_POST["phoneNum"]) ? $_POST["phoneNum"] : '';
   
    $sql = "select * from register where username='$username'";
    $sql.= ";select * from register where phoneNum='$phoneNum'";

    $result = multi_query_oop($sql);
    
    echo json_encode($result, JSON_UNESCAPED_UNICODE);
    
?>