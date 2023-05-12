<?php
session_start();

include 'connect.php';
include 'config.php';
include 'updUser.php';

$idUser = $list['Id_Usuario'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" type="text/css" href="css/loader.css">
    <title>| VFAST | Perfil |</title>
    <link rel="stylesheet" href="css/estiloC.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  
    <link rel="icon" type="image/png" sizes="10x10" href="../img/Vfast.PNG.png">
</head>
<body>
    <div class="contenedor_loader">
    <div class="loader"></div>
  </div>

  



 <div class="container col-6 p-2 " style="border: 10px solid; border-color: #900D09; height: 600px; width: 600px; margin-top: 40px; border-radius: 30px;"> 


      <div id="lista">
        <a href="">
        <img src="img/perfil.jpg" class="rounded mx-auto d-block" alt="" width="300px" height="300px">
        </a>
    </div>



   


    <form action="<?php echo $_SERVER['PHP_SELF']?>" method="POST">
                      
                       <!-- <div class="input-group md-3">
							<span class="input-group-text" id="registro">
								<svg class="bi" width="32" height="32" fill="currentColor">
									<use xlink:href="../library/icons/bootstrap-icons.svg#person-circle" />
								</svg>
							</span>
							<input type="hidden" name="Nick" class="form-control" value="<?php echo $list['Nick']; ?>" placeholder="nick name" aria-label="text" aria-describedaby="text" required>
							<div class="valid-feedback"> nick Valido</div>
							<div class="invalid-feedback"> Agregar nick</div>
						</div> -->


						<div class="input-group mb-3">
							<span class="input-group-text" id="registro">
								<svg class="bi" width="32" height="32" fill="currentColor">
									<use xlink:href="../library/icons/bootstrap-icons.svg#person-circle" />
								</svg>

							</span>
							<input type="text" name="Nombres" class="form-control" value="<?php echo $list['Nombre']; ?>" placeholder="Nombre" aria-label="text" aria-describedaby="text" required>
							<div class="valid-feedback"> Nombre Valido</div>
							<div class="invalid-feedback"> Agregar Nombre</div>

						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="registro">
								<svg class="bi" width="32" height="32" fill="currentColor">
									<use xlink:href="../library/icons/bootstrap-icons.svg#person-circle" />
								</svg>
							</span>
							<input type="text" name="ApellidoP" class="form-control" value="<?php  echo $list['ApellidoP'];  ?>" placeholder="Apellido Paterno" aria-label="text" aria-describedaby="text" required>
							<div class="valid-feedback"> Apellido Valido</div>
							<div class="invalid-feedback"> Agregar Apellido</div>
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="registro">
								<svg class="bi" width="32" height="32" fill="currentColor">
									<use xlink:href="../library/icons/bootstrap-icons.svg#person-circle" />
								</svg>
							</span>
							<input type="text" name="Email" class="form-control" value="<?php  echo $list['Email'];  ?>" placeholder="Apellido Paterno" aria-label="text" aria-describedaby="text" required>
							<div class="valid-feedback"> Apellido Valido</div>
							<div class="invalid-feedback"> Agregar Apellido</div>
						</div>
						

                        <input type="hidden" name="id" value="<?php echo $idUser ?>">

						<div name="registro" class="d-grid  gap-2" >
                            <input type="submit" value="Actualizar" name="btnEdit" style="margin-top: 2rem ;" class="btn btn-outline-danger btn-sm ">
							
						</div>
					</form><br><br>

                    <div class="container-fluid col-md-8 justify-content-center">
            <a href="../escritorio PerfilFree.php" id="Regresar" style="font-size: 25px; margin-top: 5px; background-color: transparent; color: #D0312D; text-decoration: none;">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
                    <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                  </svg>
                  Regresar
            </a>












    
<!--datos que se muestran en el perfil

    <div class="text-center " style="margin-right: 10px; margin-left: 10px;">
        <h5 style="font-size: 30px; font-weight: bold;"><?php echo $usari; ?></h5>
        <font color="#D0312D"><h5 style="font-size: 22px;" >@julitaM_12</h5></font>
        <h5 style="font-size: 22px;">13 de Agosto</h5>
        <h5 style="font-size: 22px;"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16" style="color: #D0312D; text-decoration: none;">
            <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
            <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
          </svg>
            De Naucalpan, EDOMEX</h5>
        <h5 style="font-size: 22px; font-weight: bold;">"Busco lugares interesantes y tranquilos para poder disfrutar en compañía."
        </h5>
    </div>

    </div>

        <nav class="navbar navbar-expand-lg navbar-ligth bg-ligth">
        <div class="container-fluid col-md-8">
            <a href="escritorio Free.php" id="Regresar" style="font-size: 25px; margin-top: 5px; background-color: transparent; color: #D0312D; text-decoration: none;">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
                    <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                  </svg>
                  Regresar
            </a>
            <a href="include/cerrar.php" id="cerrar" style="font-size: 25px; margin-top: 5px; background-color: transparent; color: #D0312D; text-decoration: none; "  >
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                  </svg>
                  cerrar sesion
            </a>


            <a href="escritorio Editar.html" id="Editar" style="font-size: 25px; margin-top: 5px; background-color: transparent; color: #D0312D; text-decoration: none;">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                  </svg>
                  Editar
            </a>
        </div>
       
    </nav>
-->
<script src="js/loader.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>