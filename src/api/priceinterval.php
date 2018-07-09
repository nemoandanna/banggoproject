<?php
    
    include 'DBHelper.php';
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
    header('Access-Control-Request-Headers:accept, content-type');
    // $page = isset($_GET["page"]) ? $_GET["page"] : '30';
    // $limit = isset($_GET["limit"]) ? $_GET["limit"] : '30';
    // $sql = 'select SQL_CALC_FOUND_ROWS * from goodslistput';
    
    // $sql .= ' limit ';
    // $sql .= $page - 1; 
    // $sql .= ', ';
    // $sql .= $limit;
    $sql = "select * from goodslistput ORDER BY sale ASC";
    $result = query_oop($sql);
    
    echo json_encode($result, JSON_UNESCAPED_UNICODE);
    
?>