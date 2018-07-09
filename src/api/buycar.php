<?php
    
    include 'DBHelper.php';
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
    header('Access-Control-Request-Headers:accept, content-type');
    $username = isset($_GET["username"]) ? $_GET["username"] : '';
    $shopid = isset($_GET["shopid"]) ? $_GET["shopid"] : '';
    $shopnumber = isset($_GET["shopnumber"]) ? $_GET["shopnumber"] : '';
    $clothscolor = isset($_GET["clothscolor"]) ? $_GET["clothscolor"] : '';
    $clothssize = isset($_GET["clothssize"]) ? $_GET["clothssize"] : '';
    $buybrand = isset($_GET["buybrand"]) ? $_GET["buybrand"] : '';
    $buystyle = isset($_GET["buystyle"]) ? $_GET["buystyle"] : '';
    $buyprice = isset($_GET["buyprice"]) ? $_GET["buyprice"] : '';
  
    $sql = "insert into buycar(username,shopid,shopnumber,clothscolor,clothssize,buybrand,buystyle,buyprice) values('$username','$shopid','$shopnumber','$clothscolor','$clothssize','$buybrand','$buystyle','$buyprice')";
    
    $result = query_oop($sql);

    excute($sql);

    
?>