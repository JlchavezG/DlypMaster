<?php
error_reporting(0);
include "include/connect.php";
include "include/pregist.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/stilos.css" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- archivo de validacion de los campos -->
    <link rel="stylesheet" href="js/validar_campos.js">

    <!--Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">


    <title>VFast | Registrarse</title>

</head>
<body>
    <!--Main-->
    <div class="container col-12 p-5 mt-5 ">

        <div class="row">

            <div class="container col-6 border shadow p-2" ><br><br>
                <img src="img/vfast_png.png" alt="" class="img-thumbnail img-fluid border-0 w-100 h-auto justify-content-center align-items-center">
            </div>


            <!--Formulario-->
            <div class="container col-6 border shadow p-2">
                <h1 class="text-center mt-3">VFast</h1>
                <h3 class="text-center">Registrarse</h3>
                <form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>" >

                    <label for="N_user" class="form-label mt-4 ms-5">Nickname</label>
                    <input type="text" class="form-control w-75 mx-auto" id="nickname2" name="nick" placeholder="Ingresa tu nombre de usuario" required>

                    <label for="Nombre" class="form-label mt-4 ms-5">Nombre(s)</label>
                    <input type="text" class="form-control w-75 mx-auto" id="Nombres" name="nombre" placeholder="Ingresa tu nombre" required>

                    <label for="Apeliidos" class="form-label mt-4 ms-5">Apellidos</label>
                    <input type="text" class="form-control w-75 mx-auto" id="Apellidos" name="apell" placeholder="Ingresa tus apellidos" required>

                    <label for="Mail" class="form-label mt-4 ms-5">Correo Electronico</label>
                    <input type="email" class="form-control w-75 mx-auto" id="mail" name="correo" placeholder="name@example.com" required>

                    <label for="Password" class="form-label mt-4 ms-5">Contraseña</label>
                    <input type="password" class="form-control w-75 mx-auto" id="password" name="passw" placeholder="Ingresa tu contraseña" required>

                    <div class="row mb-5">

                        <label for="T_user" class="form-label mt-4 ms-5">Tipo de Usuario</label>

                        <div class="row mx-auto">
                            <div class="col-lg-3 form-check mt-3 ms-5">
                                <input class="form-check-input" type="radio" name="male" id="user_free">
                                <label class="form-check-label" for="Free_user">
                                Free
                                </label>
                            </div>
                            <div class="col-lg-3 form-check mt-3 ms-5">
                                <input class="form-radio-input" type="radio" name="male"  id="user_premium">
                                <label class="form-check-label" for="Premium_user">
                                Premium  
                                </label>
                                
                            </div> 
                            
                    </div> 

                    <div class="row">
                        <div class="col">
                        <div class="row">
                            <!--
                               <input type="checkbox" rol="switch" name="" id="aviso" onclick="activar(this);">
                            -->   
                               <button class="nav-link btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModalLong">Aviso de Privacidad 
            
                                <input type="checkbox" rol="switch" name="" id="aviso" onclick="activar(this);">
                               </button>
                                 
                                
                                </div>
                            </div>
                        
                        
                    </div>
                           <div class=" d-grid gap-2 col-6 mx-auto mb-5">
                             <button class="btn2 btn-danger" type="submit"  name="bntregistrar" value="registrar" id="registrar" onclick="validar()";>Registrarse</button>
                            
                              <div class="d-grid gap-2 col-6 mx-auto mb-5 justify-content-center">
                                  <a href="index1Login.php"> <button class="btn2 btn-danger" type="button">Regresar </button></a>
                               </div> 
                               
                            </div>
                         

                               
<!-- redes -->

             </form>
            </div>
            <?php echo $mensaje; ?>
        </div>

    </div>
    


<!-- Modal -->
<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Aviso de Privacidad</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      V.Fast conforme a lo establecido a la Ley Federal de Protección de Datos Personales en Posesión de los Particulares de Los Estados Unidos Mexicanos ponemos a disposición de nuestros clientes, el presente aviso de privacidad.
El objetivo de esta Política de Privacidad es informarte sobre qué datos recogemos, por qué los recogemos y cómo puedes actualizarlos, gestionarlos, exportarlos y eliminarlos.
Los datos personales ingresados serán utilizados únicamente para las actividades internas de la empresa.
Los datos que solicitamos a nuestros clientes son: Nombre, Apellidos, Correo Electrónico con la finalidad poder identificar a cada usuario dentro de la página ya que se realizan acuerdos entre usuario y proveedor, sin embargo nos proporcionas información personal que incluye tu nombre y tu contraseña. También puedes añadir un número de teléfono o datos de pago a tu cuenta. 
También se recopila la actividad dentro de la plataforma lugares registrados, viajes, interacciones, búsquedas.
Dicha información es recopilada con el fin de ofrecer una experiencia personalizada dentro de la plataforma
El presente aviso esta propenso a modificaciones en tal caso se notificará previamente a los usuarios.
Recogemos información para proporcionar los mejores servicios a todos nuestros usuarios: desde determinar información básica, como el idioma que hablas, hasta datos más complejos
Al utilizar nuestros servicios, nos confías tus datos. Entendemos que es una gran responsabilidad y nos esforzamos al máximo para proteger tu información y permitirte controlarla.

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Aceptar</button>
        
      </div>
    </div>
  </div>
</div>

<?php
echo $alerta;
?>

<!-- termina modal -->




    <script src="js/bootstrap.js"></script>
    <script src="js/validar_campos.js"></script>
    <script src="js/evireen.js"></script>

    <script>

        document.getElementById('registrar').disabled=true;
        function activar(bc){
            if(bc.checked)
            document.getElementById('registrar').disabled=false;
            else
            document.getElementById('registrar').disabled=true;
        }

    </script>

</body>
</html>






