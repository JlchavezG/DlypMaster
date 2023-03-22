
<?php

session_start();
   
include "connect.php";

   

   if(isset($_POST['btnentrar'])){

    $user=$conecta->real_escape_string($_POST['usuario']);
    $pass=$conecta->real_escape_string($_POST['password']);
    

    $consulta="SELECT * FROM usuarios WHERE Nick='$user' and Password = '$pass'";
    if($resultado=$conecta->query($consulta)){
        while($row=$resultado->fetch_array()){
            $userok =$row['Nick'];
            $passok =$row['Password'];

        }
        $resultado->close();

    }
    $conecta->close();
      if(isset($user)  && isset($pass)){
          if($user==$userok && $pass== $passok){
            $_SESSION['login']= TRUE;
            $_SESSION['Nick']= $usuario;

            header("location:escritorio_Free.php");
        }
        else{
            
            
            header("location:recuperar.html");
        
       }
    }
   
 }
    
    
?>
