<?php
error_reporting(0);
session_start();

include "include/connect.php";


$usuario= $_SESSION['Nick'];

if(!isset ($usuario)){

header( "location:index1Login.php");

}




?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

     <link rel="stylesheet" type="text/css" href="css/traductor.css">
      <link rel="stylesheet" type="text/css" href="css/loader.css">
    <title>| VFAST | Eventos |</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">
    
        <link rel="icon" type="image/png" sizes="16x16" href="img/Vfast.PNG.png">

</head>

<body>
<div class="contenedor_loader">
    <div class="loader"></div>
  </div>



    <!--NAVBAR-->
    <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-danger ">
      <div class="container-fluid">
        <a class="navbar-brand fw-bold text-light" href="escritorio Free.html">
          <img src="img/VFAST.png" alt="" width="100" height="50" class="d-inline-block align-text-top">
         </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active text-light" aria-current="page" href="escritorio Free.html">Inicio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light" href="escritorio Categorías.html">Categorías</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light" href="escritorio Novedades.html">Novedades</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light" href="escritorio Recomendaciones.html">Recomendaciones</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light" href="escritorio Ayuda.html">Ayuda</a>
            </li>
            <li class="nav-item">
          <a class="nav-link bg-warning " style="border-radius: 15px; font-weight: bold;" href="Login VFAST/Login VFAST.html">Iniciar Sesión</a>
        </li>


      
            

          <div class="col">
                <div class="row text-end">
                  <div class="col mt-2">
                    <a href="https://web.facebook.com/profile.php?id=100082946942193" target="_blank">
                      <svg class="bi text-light" width="20" height="25" fill="currentColor">
                        <use xlink:href="library/icons/bootstrap-icons.svg#facebook"/>
                      </svg>
                    </a>&nbsp;&nbsp;
          
                    <a href="https://mobile.twitter.com/dlyp_md" target="_blank">
                        <svg class="bi text-light" width="20" height="25" fill="currentColor">
                          <use xlink:href="library/icons/bootstrap-icons.svg#twitter"/>
                        </svg>
                    </a>&nbsp;&nbsp;
          
                    <a href="https://www.instagram.com/dlyp_marketingdigital/" target="_blank">
                        <svg class="bi text-light" width="20" height="25" fill="currentColor">
                         <use xlink:href="library/icons/bootstrap-icons.svg#instagram"/>
                        </svg>
                    </a>&nbsp;&nbsp;
          
          
                  </div>
                </div>
              </div>

        </div>

      </div>
      <nav class="navbar bg-danger">  
        <div class="container-fluid">
          <form class="d-flex" role="search">
             <input class="form-control me-2" style="width: 250px;" type="search" placeholder="Buscar" aria-label="Search">
             <button class="btn btn-outline-success" style="background-color:rgb(255,255, 255); color: black;" type="submit">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                </svg>
            </button>
            <a href="escritorio PerfilFree.html">
              <img src="img/perfil1.png" alt="" width="34px">
            </a>
          </form>
        </div>
</nav>

    </nav>

     <!--NAVBAR-->



    <!--PARTE SUPERIOR-->
    <center><div class="card" style="width: 700px; height: auto; max-width: 100%; background-color: transparent; border-color: transparent;">
  <div class="card-body"> 
    <h1 class="card-title bg-dark text-light" style="font-weight: bold; border-radius: 30px;">EVENTOS DE TEMPORADA</h1>
  </div>
</div></center>

<center><div class="card" style="width: 700px; height: auto; max-width: 100%; background-color: transparent; border-color: transparent;">
  <div class="card-body"> 
    <font color="crimson">
    <h1 class="card-title bg-light " style="font-weight: bold; border-radius: 30px; font-size: 36px;">¿Quieres un fin de semana increíble?</h1></font>
  </div>
</div></center>

    <center></center><center><div class="card" style="width: 600px; height: auto; max-width: 100%; background-color: transparent; border-color: transparent;">
  <img src="img/n1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title bg-danger text-light" style="font-weight:bold; border-radius: 30px; font-size: 30px;">-- Información --</h5>
    <p class="card-text" style="font-size: 20px;">El Desfile de Día de Muertos, como parte de la tradición mexicana, busca recordar y conmemorar los difuntos.</p>
  </div>
</div></center><!--PARTE SUPERIOR-->



<hr color="#900603" style="border: 6px solid;">

  <div class="row py-3 bg-white mt-2" >
    <div class="col" style="display: flex; justify-content: center;">
      <h4 class="text-center bg-danger text-light" style="font-weight: bold; width: 500px; border-radius: 30px; "><-- Escoga un idióma --></h4>
    </div>
  </div>

<div class="col" style="background-color: transparent; border-color: transparent; display: flex; justify-content: center;">
 <span class="es" style="font-size:20px; margin-bottom: 10px;">Español</span>
<input type="checkbox" class="check" style="margin-bottom: 10px;">
<span class="en" style="font-size:20px; margin-bottom: 10px;">Inglés</span></div>

<hr color="#900603" style="border: 6px solid;">


 



 <!--EVENTO 1-->
<div class="row row-cols-1 row-cols-md-2 g-4">
  <div class="col">
    <div class="card" style="background-color: transparent; border-color: transparent;">
      <a href="#">
          <button type="button" class="btn btn-dark" style="font-size: 20px; font-weight: bold;" >
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-airplane-fill" viewBox="0 0 16 16">
              <path d="M6.428 1.151C6.708.591 7.213 0 8 0s1.292.592 1.572 1.151C9.861 1.73 10 2.431 10 3v3.691l5.17 2.585a1.5 1.5 0 0 1 .83 1.342V12a.5.5 0 0 1-.582.493l-5.507-.918-.375 2.253 1.318 1.318A.5.5 0 0 1 10.5 16h-5a.5.5 0 0 1-.354-.854l1.319-1.318-.376-2.253-5.507.918A.5.5 0 0 1 0 12v-1.382a1.5 1.5 0 0 1 .83-1.342L6 6.691V3c0-.568.14-1.271.428-1.849Z"/>
            </svg>
            - 15 Dic -
          </button>
          </a>
          <h5 class="card-title bg-danger text-center text-light mt-2" style="border-radius: 30px; font-size: 25px;">Festividad Zocalo CDMX</h5>
      <img src="img/zocalo.jpeg" class="card-img-top" alt="...">
      <div class="card-body">
       <p class="card-text text-center bg-dark text-light" style="border-radius: 30px; font-size: 25px; font-weight: bold;">+ Información +</p>
       <p class="card-text text-center">El alumbrado decorativo navideño en el Zócalo de la Ciudad de México se  encendió este lunes. Estará todo diciembre y hasta el Día de Reyes.<br>
En un breve mensaje la Jefa de Gobierno, se haran actividades en el Centro Histórico con una visión ecológica.</p>
<center><a href="zocalo.html" class="btn btn-warning"  style=" border-radius: 30px; width: 240px; font-weight: bold;">Mas sobre...</a></center>
      </div>
    </div>
  </div>
  <!--EVENTO 1-->



<!--EVENTO 2-->
  <div class="col">
    <div class="card" style="background-color: transparent; border-color: transparent;">
                  <a href="#">
          <button type="button" class="btn btn-dark" style="font-size: 20px; font-weight: bold;" >
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-airplane-fill" viewBox="0 0 16 16">
              <path d="M6.428 1.151C6.708.591 7.213 0 8 0s1.292.592 1.572 1.151C9.861 1.73 10 2.431 10 3v3.691l5.17 2.585a1.5 1.5 0 0 1 .83 1.342V12a.5.5 0 0 1-.582.493l-5.507-.918-.375 2.253 1.318 1.318A.5.5 0 0 1 10.5 16h-5a.5.5 0 0 1-.354-.854l1.319-1.318-.376-2.253-5.507.918A.5.5 0 0 1 0 12v-1.382a1.5 1.5 0 0 1 .83-1.342L6 6.691V3c0-.568.14-1.271.428-1.849Z"/>
            </svg>
             - 20 Dic -
          </button>
          </a>
          <h5 class="card-title bg-danger text-center text-light mt-2" style="border-radius: 30px; font-size: 25px;">Festividad Monumento a la Revolución</h5>
      <img src="img/revolucion.jpg" class="card-img-top" alt="..." style=>
      <div class="card-body">
        <p class="card-text text-center bg-dark text-light" style="border-radius: 30px; font-size: 25px; font-weight: bold;">+ Información +</p>
        <p class="card-text text-center">Este año la Pista de Hielo  que mide 200 metros cuadrados que  se instalo en la explanada del Monumento a la Revolución, a un costado se coloco un árbol navideño y adornos navideños.<br>
La pista de hielo tiene un horario de 9:30 a 21:15 horas, y estará hasta el 11 de enero.</p>
<center><a href="rev.html" class="btn btn-warning" style="border-radius: 30px; width: 240px; font-weight: bold;">Mas sobre...</a></center>
      </div>
    </div>
  </div>
 </div> 
 <!--EVENTO 2-->


<!--BOTON MAS-->
<center>
  <a href="rev.html" class="btn btn-dark " style="width: 300px;border-radius: 30px; font-size: 25px; font-weight: bold;">Ver más eventos...</a>
  </center>
<!--BOTON MAS-->


<!--ANUNCIO-->
  <div class="alert alert-warning alert-dismissible fade show mt-3" role="alert">
  <center><a href="https://www.didi-food.com/es-419/food/"><img class="mx-auto d-block w-100 mt-3" src="img/anuncio1.jpg"></a></center>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<!--ANUNCIO-->



    <script src="js/loader.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/traductor.js"></script>
</body>
</html>