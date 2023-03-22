<?php
$servidor="localhost";
$usuario="root";
$password="";
$bd="dlyp07";
$conexion= mysqli_connect($servidor, $usuario, $password, $bd);

if ($conexion -> connect_error){
			die('Error al conectar la Base de Datos'.$conexion->connect_error);
		}

		else{
			echo "Se conecto a la Base de Datos exitosamente";
		}	
	?>