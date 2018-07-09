<?php 
   include 'DBHelper.php';
   header('Access-Control-Allow-Origin:*');
   header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
   header('Access-Control-Request-Headers:accept, content-type');
   $shopid = isset($_GET["shopid"]) ? $_GET["shopid"] : '';
   $username = isset($_GET["username"]) ? $_GET["username"] : '';

   $sql = "delete from buycar where shopid='$shopid' and username='$username'";
 
 
   excute($sql);

   $sql1 = "select * from buycar where username='$username'";

   $result = query_oop($sql1);
   
   echo json_encode($result, JSON_UNESCAPED_UNICODE);
 
?>