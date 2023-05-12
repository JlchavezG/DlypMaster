<?php
include "connect.php";
if (isset($_POST['bntregistrar'])) {

    $nombres = $_POST['nombre'];
    $apellido1 = $_POST['apell'];
    $apellido2 = "Hernandez";
    $genero = "2";
    $nickname = $_POST['nick'];
    $correo = $_POST['correo'];
    $contraseñas = $_POST['passw'];

    $validar = "SELECT * FROM usuarios WHERE Email = '$correo' || Nick ='$nickname'";
    $validacon = $conecta->query($validar);
    if ($validacon->num_rows > 0) {
?>
        <h3 class="ok"> Tu Nickname y/o Correo ya se encuentran registrados </h3>
        <?php

    } else {

        if (isset($_POST['btnSend'])) {
            $name = $_POST['name'];
            $gender = '';
            if (isset($_POST['male']) && $_POST['male'] == 'on') {
                $gender = '1';
                $q = "INSERT INTO usuarios(id_usuario, nombre, id_genero, imagen) VALUES('$name', '$gender','ejemplo');";
                $ejq = $conecta->query($q);
                if ($ejq > 0) {
                    header("location:registro.php");
                }
            } elseif (isset($_POST['female']) && $_POST['female'] == 'on') {
                $gender = '2';
                $q = "INSERT INTO usuarios(id_usuario, nombre, id_genero, imagen) VALUES('$name', '$gender','ejemplo');";
                $ejq = $conecta->query($q);
                if ($ejq > 0) {
                    header("location:registro.php");
                }
            }
        }
        if ($guarcon) {
        ?>
            <h3 class="ok"> te has inscripto correctamente</h3>
        <?php
        } else {
        ?>
            <h3 class="bad"> ups no te has inscripto correctamente</h3>
<?php

        }
    }
}
?>