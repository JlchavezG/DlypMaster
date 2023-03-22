<?php
/*
$servidor = "localhost";
$usuario = "root";
$pass = "";
$BD = "dlyp07";

$connect = mysqli_connect($servidor, $usuario, $pass, $BD);
if($connect -> connect_error){
    die('Error al conectar la base de datos'.$connect->connect_erron);
}
*/

$servidor= "localhost";
$usuario="root";
$pass="";
$bd="dlyp07";

$conecta=mysqli_connect($servidor, $usuario, $pass, $bd);
if($conecta -> connect_error){
    die ('error al conectar la base de datos'.$conecta->connect_erron);
 
}
else{
    /*echo"conexion exitosa";*/
}
    

?>

