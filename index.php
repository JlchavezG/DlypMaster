<?php
error_reporting(0);
if (isert ($_POST['ingresar'])){
$usuario= "Adminsistemas";
$pasword= "admin405";
$user =$_POST['usuario']; 
$pass =$_POST['pass'];
if($usuario==$user&& $pasword==$pass){
  header("location:escritorio.php");
}
else{}
$mensaje=
      <div class=>
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <title>NavBar Bootstrap</title>
</head>
<body>

   <!--<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">Dlyp</a>
            <button class="navbar-toggler"type="button"  data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>
-->

<!--Inicia la barra de navegacion-->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.html">Dlyp</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Quienes Somos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Proyecto</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Politica de Calidad
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <li><a class="dropdown-item" href="#">Mision</a></li>
              <li><a class="dropdown-item" href="#">Vision</a></li>
              <li><a class="dropdown-item" href="#">Objetivos</a></li>
            </ul>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="#ModalSesion">Iniciar Sesión</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>


  <!--Inicia el Carousel de imagenes-->
  <div id="SliderPrincipal" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="img/img1.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="img/img2.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="img/img3.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="img/img4.jpg" class="d-block w-100" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#SliderPrincipal" data-bs-slide="prev">
      <span class="carousel-control-prev-icon btn-slider" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#SliderPrincipal" data-bs-slide="next">
      <span class="carousel-control-next-icon btn-slider" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
<!--Termina carousel-->

<!--Inicia la zona de servicios-->

<div class="row py-3 bg-dark">
  
</div>

<div class="container">
  <div class="row mt-3">

    <div class="col-sm-12 col-md-4">
      <div class="card shadow">
        <img src="img/img3.jpg" alt="instrumentos" class="card-img-top mx-auto" style="width:200px ;">
        <div class="card-body">
          <h3 class="card-tittle text-center">Logotipos</h3>
          <p class="card-text">Te ayudamos a realizar la imagen corporativa de tu empresa o negocio.</p>
          <div class="row text-center">
            <a href="diseño.html" class="btn btn-sm btn-primary">Más Información</a>
          </div>
        </div>
      </div>
    </div>

    <div class="col-sm-12 col-md-4">
      <div class="card shadow">
        <img src="img/img4.jpg" alt="instrumentos" class="card-img-top mx-auto" style="width:200px ;">
        <div class="card-body">
          <h3 class="card-tittle text-center">Logotipos</h3>
          <p class="card-text">Te ayudamos a realizar la imagen corporativa de tu empresa o negocio.</p>
          <div class="row text-center">
            <a href="diseño.html" class="btn btn-sm btn-primary">Más Información</a>
          </div>
        </div>
      </div>
    </div>

    <div class="col-sm-12 col-md-4">
      <div class="card shadow">
        <img src="img/img1.jpg" alt="instrumentos" class="card-img-top mx-auto" style="width:200px ;">
        <div class="card-body">
          <h3 class="card-tittle text-center">Logotipos</h3>
          <p class="card-text">Te ayudamos a realizar la imagen corporativa de tu empresa o negocio.</p>
          <div class="row text-center">
            <a href="diseño.html" class="btn btn-sm btn-primary">Más Información</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--Termina zona servicios-->
<div class= "container">
<div class= "row mt-3">
<div class= "col-1">
<div class= "text-center">
  <h2 class= "display-6 mt-3">Sobre mi</h2>


<!--MODAL-->
<div class="modal fade" id="ModalSesion" tabindex="-1" aria-labelledby="" aria-hidden="false">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="ModalSesioinLabel">Iniciar Sesión</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
      <input type="text" name="usuario" placeholder="Usuario" class="form-control" required>
      <input type="password" name="pass" placeholder="Contraseña" class="form-control" required>

    </form>
      </div>
      <div class="modal-footer">
        <button type="submit" name="ingresar" value="Ingresar" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

    <script src="js/bootstrap.min.js"></script>
</body>
</html>