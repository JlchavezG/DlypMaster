<?php
    include 'connect.php';
    $tusuario = "SELECT * FROM usuarios ORDER BY Nombre";
    $tusuarioej = $conexion->query($tusuario);

    //$cortar = $tusuarioej->fetch_array();
?>