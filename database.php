<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sql_table";

$connection = mysqli_connect($servername, $username, $password, $dbname);
if(!$connection){
    echo "Failed to connect";
}else{
    echo "Connected!";
}
?>
