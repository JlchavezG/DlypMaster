<?php

include 'connect.php';

if(isset($_POST['btnEdit'])){

    //$nickname = $_POST['Nick'];
    $name = $_POST['Nombres'];
    $apellidoP = $_POST['ApellidoP'];
    $email = $_POST['Email'];
    $id = $_POST['id'];

    $q = "UPDATE `usuarios` SET `Nombre` = '$name', `ApellidoP` = '$apellidoP', `Email` = '$email' WHERE `Id_Usuario` = '$id'";
    $ejq = $conecta->query($q);
    if($ejq){
        header("refresh:2; editarperfil.php");
    }
    
}

?>