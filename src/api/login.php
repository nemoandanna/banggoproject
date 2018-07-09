<?php
    
    include 'DBHelper.php';
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
    header('Access-Control-Request-Headers:accept, content-type');
    $loginusername = isset($_POST["loginusername"]) ? $_POST["loginusername"] : '';
    $loginphone = isset($_POST["loginphone"]) ? $_POST["loginphone"] : '';
    $loginpwd = isset($_POST["loginpwd"]) ? $_POST["loginpwd"] : '';
   
    $sql = "select * from register where username='$loginusername'";
    $sql.= ";select * from register where phoneNum='$loginphone'";
    $sql.= ";select * from register where pwd='$loginpwd'";

    $result = multi_query_oop($sql);
    
    echo json_encode($result, JSON_UNESCAPED_UNICODE);
    
?>