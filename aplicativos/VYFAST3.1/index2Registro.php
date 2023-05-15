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

                        <div class="row mx-auto mb-1">
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
   

                    <div class="form-check form-switch mt-4 ms-5 mb-4">
                        <input class="form-check-input" type="checkbox"  id="flexSwitchCheckChecked" role="switch" id="aviso" onclick="validar(this);">
                        <label class="form-check-label" for="flexSwitchCheckChecked">
                             <label for="">
                      
                                    <a href="" class="text-decoration-none text-dark" data-bs-toggle="modal" data-bs-target="#terminos"> Acepto terminos y condiciones</a>
                             </label>
                        </label>
                      </div>
                      
             
                           <div class=" d-grid gap-2 col-6 mx-auto ">
                           <input type="submit" value="Registrar" name="bntregistrar" id="registro" class="btn btn-danger mb-3">

                            <!-- <button class="btn2 btn-danger" type="submit"  name="bntregistrar" value="registrar" id="registrar">Registrarse</button> -->
                            
                            <div class="d-grid gap-2 mx-auto mb-5 justify-content-center btn btn-danger col-12">
                            <a class="btn-danger text-decoration-none" href="index1Login.php">Regresar</a>
                           </div> 
                             
                            </div>
                         

                               
<!-- redes -->

             </form>
            </div>
            <?php echo $mensaje; ?>
        </div>

    </div>

    <?php include 'terminos.php'; ?>





    <script src="js/bootstrap.js"></script>
    <script src="js/validar_campos.js"></script>
    <script src="js/evireen.js"></script>

    <script>


document.getElementById('registro').disabled=true; 
function validar(cb){
       if(cb.checked)
       document.getElementById('registro').disabled=false;
       else
       document.getElementById('registro').disabled=true;
} 
</script>
</body>
</html>






