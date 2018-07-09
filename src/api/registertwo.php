<?php
    
    include 'DBHelper.php';
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
    header('Access-Control-Request-Headers:accept, content-type');
    $username = isset($_POST["username"]) ? $_POST["username"] : '';
    $pwd = isset($_POST["pwd"]) ? $_POST["pwd"] : '';
    $phoneNum = isset($_POST["phoneNum"]) ? $_POST["phoneNum"] : '';
    


    $sql = "insert into register (username,pwd,phoneNum) values ('$username','$pwd','$phoneNum')";
    
    excute($sql);
    
    // echo json_encode($result, JSON_UNESCAPED_UNICODE);
?>