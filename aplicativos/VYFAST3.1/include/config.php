<?php

include 'connect.php';

$usari=$_SESSION['Nick'];

if(!isset($usari)){

header( "location:index1Login.php");

}

$q = "SELECT U.Id_Usuario, U.Nombre, U.ApellidoP, U.ApellidoM, U.Id_Genero, U.Email, U.Nick, U.Password, G.Id_Genero, G.NomGenero 
        FROM usuarios U INNER JOIN genero G ON U.Id_Genero = G.Id_Genero WHERE Nick = '$usari'";
$ejq = $conecta->query($q);
$list = $ejq->fetch_assoc();

?>
