<?php
    
    include 'DBHelper.php';
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
    header('Access-Control-Request-Headers:accept, content-type');
    $searchId = isset($_GET["searchId"]) ? $_GET["searchId"] : '';
  
    $sql = "select * from goodslistput where shopid='$searchId'";

    $result = query_oop($sql);
    
    echo json_encode($result, JSON_UNESCAPED_UNICODE);
    
?>