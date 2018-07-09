<?php
    include 'DBHelper.php';
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
    header('Access-Control-Request-Headers:accept, content-type');
    $page = isset($_GET["page"]) ? $_GET["page"] : '30';
    $limit = isset($_GET["limit"]) ? $_GET["limit"] : '30';
    $brandf = isset($_GET["brandf"]) ? $_GET["brandf"] : '';

    $sql = "select SQL_CALC_FOUND_ROWS * from goodslistput where brand = '$brandf'";
   
 
    $sql .= ';select FOUND_ROWS() as rowsCount;';

    $result = multi_query_oop($sql);
    
    echo json_encode($result, JSON_UNESCAPED_UNICODE);
?>