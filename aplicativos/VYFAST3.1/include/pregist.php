<?php
include "connect.php";
if(isset($_POST['bntregistrar'])){
    
    $nombres= $_POST['nombre'];
    $apellido1= $_POST['apell'];
    $apellido2="Hernandez";
    $genero="2";
    $tusuario="1";
    $nickname= $_POST['nick'];
    $correo =$_POST['correo'];
    $contraseñas=$_POST['passw'];

    $validar="SELECT * FROM usuarios WHERE Email = '$correo' || Nick ='$nickname'";
    $validacon= $conecta->query($validar);
    if($validacon->num_rows >0){
        
        $alerta .= "<div class='alert alert-warning alert-dismissible fade show' role='alert'>
        <strong>  Tu Nickname y/o Correo ya se encuentran registrados
        <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
      </div>";
        
        
        
        
        
        

    }
    else{

    $conin = "INSERT INTO usuarios ( `Nombre`, `ApellidoP`, `ApellidoM`, `Id_Genero`, `Email`, `Id_Tusuario`, `Nick`, `Password`) VALUES ('$nombres','$apellido1','$apellido2','$genero','$correo','$tusuario','$nickname','$contraseñas')";
    $guarcon = mysqli_query($conecta, $conin);
    
    if($guarcon){

        
        
        $alerta .= "<div class='alert alert-success alert-dismissible fade show' role='alert'>
        <strong>Te has inscripto correctamente.
        <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
      </div>";
        /*
        ?>
        
        <h3 class="ok"> te has inscripto correctamente</h3>
        <?php
        */
    }else {
        $alerta .= "<div class='alert alert-danger alert-dismissible fade show' role='alert'>
        <strong> Up no te has inscrito correctamente
        <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
      </div>";
        
        /*?>
        <h3 class="bad"> ups no te has inscripto correctamente</h3>
        <?php
        */
    
    }
}

  }
?>
