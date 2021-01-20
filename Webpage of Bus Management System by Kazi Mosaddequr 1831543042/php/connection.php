<?php

$db_server = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "mydb";
$port = 3307;

 $conn = mysqli_connect ($db_server,$db_user,$db_pass,$db_name,$port);

 if(!$conn){
   die("Connection failed! : ".mysqli_connect_error());
 }else {
   //echo "connected!";
 }

 ?>
