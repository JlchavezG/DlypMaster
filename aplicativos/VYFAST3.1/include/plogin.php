<?php
session_start();

error_reporting(0);

include "include/connect.php";

if(isset($_POST['btnentrar'])){
$usuari= $conecta->real_escape_string($_POST['nick']);
$passw=$conecta->real_escape_string($_POST['passwordd']);

//consulta donde se extrae los datos de BD

$consul= "SELECT * FROM usuarios WHERE Nick = '$usuari' and Password = '$passw'";
if ($res=$conecta->query($consul)) {
    while ($row = $res->fetch_array()) {
        $userok=$row['Nick'];
        $pasok=$row['Password'];
    }

    $res->close();
}
$conecta->close();
if (isset($usuari) && isset($passw)) {
    if ($usuari==$userok && $passw==$pasok) {
        $_SESSION['login']=TRUE;
        $_SESSION['Nick'] =$usuari;
        header("location:escritorio Free.php");
    }
    else{
        /*header("location:recuperar.html");*/
        $alerta .= "<div class='alert alert-warning alert-dismissible fade show' role='alert'>
        <strong>Verifica tu contraseña o intenta recuperarla.
        <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
      </div>";
        
    }
}
}


?>
<script src="js/evireen.js"></script>