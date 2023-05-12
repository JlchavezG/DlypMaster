<?php
	$servidor = "localhost";
	$usuario = "root";
	$password = "";
	$Bd = "life_games_shop";
	$conexion = mysqli_connect($servidor, $usuario, $password, $Bd);
	if ($conexion -> connect_error) {
		die('Error al conectar la base de datos de GameLifeShop' .$conexion -> connect_error);
	}
    else{
    	echo "Se conecto con la base de datos";
    }
	?>