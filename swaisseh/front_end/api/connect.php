<?php

$host = 'localhost';
$username = 'root';
$pass = '';
$dbname ='swaisseh_login';
$connect = mysqli_connect($host,$username,$pass,$dbname);


$query = "";
$resu  = mysqli_query($connect,"select * from users");



if ($connect) {

}else{
    echo("error");
    die(mysqli_error($connect));
}

?>