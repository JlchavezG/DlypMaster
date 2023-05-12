<?php
$servidor ="localhost";
$usuario = "root";
$password ="";
$bd ="dlyp07";
$conexion = mysqli_connect($servidor, $usuario, $password, $bd);
if($conexion -> connect_error){
    die('Error al  conectar la base de datos'. $conexion->connect_error);
}


?>