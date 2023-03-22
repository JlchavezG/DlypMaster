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
    <link rel="stylesheet" href="css/stilos.css">
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
                                <input class="form-check-input" type="radio" id="user_free">
                                <label class="form-check-label" for="Free_user">
                                Free
                                </label>
                            </div>
                            <div class="col-lg-3 form-check mt-3 ms-5">
                                <input class="form-radio-input" type="radio" id="user_premium">
                                <label class="form-check-label" for="Premium_user">
                                Premium
                                </label>
                                
                            </div>
                            <div class="row justify-content-center">

                                <label for="" center>Eres mayor de edad ?</label>
                                 <input class="form-check-input" type="checkbox" role="switch"  > si <br>
                                 <input class="form-check-input" type="checkbox" role="switch"  > no
                              </div>
                              
                        </div>

                    </div>

                    <div class="row">
                        <div class="col">
                            <button class="btn btn-primary w-100 my-1" >
                                
                                <div class="row align-items-center text-center">
                                    <div class="col-10 justify-content-center ">
                                        
                                          <img src="img/facebook (1).png "  width="32" alt="" class="img-logo"> Registrarse con facebook
                                          <div class="text center">
                                            
                                          </div>                           
                                   </div>
                                </div>
                            </button>

                            <button class="btn btn-info w-100 my-1" >
                                
                                <div class="row align-items-center text-center">
                                    <div class="col-10 justify-content-center ">
                                        
                                        <img src="img/google.png "  width="30" alt="" >Registrarse con facebook
                                        <div class="tetx-center">
                                        
                                        </div>
                                   </div>
                                </div>
                            </button>

                        </div>
                        
                        </div><br>
                           <div class=" d-grid gap-2 col-6 mx-auto mb-5">
                             <button class="btn2 btn-danger" type="submit"  name="bntregistrar" value="registrar" >Registrarse</button>
                            
                              <div class="d-grid gap-2 col-6 mx-auto mb-5 justify-content-center">
                                  <a href="index.html"> <button class="btn2 btn-danger" type="submit">Regresar </button></a>
                               </div> 
                               
                            </div>
                          
<!-- redes -->

            </form>
            </div>
            <?php echo $mensaje; ?>
        </div>

    </div>
    


    <script src="js/bootstrap.js"></script>
    <script src="js/validar_campos.js"></script>
</body>
</html>






