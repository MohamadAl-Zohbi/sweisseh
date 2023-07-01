<?php

$host = 'localhost';
$username = 'root';
$pass = '';
$dbname ='swaisseh';
$connect = mysqli_connect($host,$username,$pass,$dbname);


$query = "";
$resu  = mysqli_query($connect,"select * from personal");



if ($resu) {

}else{
    echo("error");
    die(mysqli_error($connect));
}

?>