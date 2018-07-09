<?php 
   include 'DBHelper.php';
   header('Access-Control-Allow-Origin:*');
   header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
   header('Access-Control-Request-Headers:accept, content-type');
   
   $sql = "select * from selectbrand";
   $sql.= ";select * from hotbrand";
   $sql.= ";select * from todayhot";
   $sql.= ";select * from mancloths";
   $sql.= ";select * from girlcloths";
   $sql.= ";select * from childcloths";
   $sql.= ";select * from shoes";

   $result = multi_query_oop($sql);
   echo json_encode($result, JSON_UNESCAPED_UNICODE);
 
?>