<?php

include "connect.php";

error_reporting(0);

$estado = "Select * From estado ORDER BY NomEstado";
$consultaE = $connect -> query($estado);
$Testados = $estado -> num_rows;

$usuarios = "Select * From usuarios Where id_Usuario" ;
$executeuser = $conecta -> query($usuarios);
$duser = $executeuser -> fetch_array();

$duser ['Nombre'];
$duse ['Apellidos'];

?>