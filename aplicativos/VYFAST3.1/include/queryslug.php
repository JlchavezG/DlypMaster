<?php
//error_reporting(0);
include "connect.php";
//require "query.php";

$consulta="SELECT * FROM img ORDER BY Nombre  ASC"  ;
$ejconsul=$conecta->query($consulta);

//$separar=$ejconsul->fetch_array();

//$consulta = "SELECT * FROM usuarios ORDER BY Nombre ASC";
//$ejconsul = $conecta->query($consulta);
// Verificar si hay errores en la consulta
/*if ($conecta->error): {
  die("Error en la consulta: " .$conecta->error);
 } endif;


 $Inner= "SELECT u.Id_Usuario, u.Nombre, u.ApellidoP, u.ApellidoM, u.Nick, u.Id_Tusuario, t.Id_Tusuario, t.NombreTusu 
 FROM usuarios u INNER JOIN tusuario t ON u.Id_Tusuario = t.Id_Tusuario";
 $Ejin=$conecta->query($Inner);
*/
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>tabla dinamica</title>
  
</head>
<body>
  <div class="conrainer">
    <div class="col-sm-12 col-md-12 col-lg-12">
      <h2 class=" text-center"> Tabla dinamica</h2>

      <div class="table-responsive table-hover">
        <table name="tabla" class="td_tabla">
          <thead class="text-muted">
            <th class="text-center"> Nombre</th>
    
            <th class="text-center"> Apellido Paterno</th>
    
            <th class="text-center"> Apellido Materno</th>
    
            <th class="text-center"> Nick</th>

            <th class="text-center">Tipo de usuario</th>

            <th class="text-center"> Opciones</th>
            
    
          </thead>
          <tbody>
          <?php while($row=$ejconsul->fetch_assoc()){?>
            <tr>
              <td><?php  echo $row ['nombre']; ?></td>
              <td> <img src="img/<?php  echo $row ['img']; ?>" style="width: 100px; "></td>

                
            </tr>

            <?php }?>
          </tbody>
         </table>
      

    </div>
  </div>



  </div>
</body>
</html>