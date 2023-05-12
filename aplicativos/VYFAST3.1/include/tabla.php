<?php
//error_reporting(0);
include "connect.php";
//require "query.php";

$consulta="SELECT * FROM usuarios ORDER BY Nombre  ASC"  ;
$ejconsul=$conecta->query($consulta);

//$separar=$ejconsul->fetch_array();

$consulta = "SELECT * FROM usuarios ORDER BY Nombre ASC";
$ejconsul = $conecta->query($consulta);
// Verificar si hay errores en la consulta
if ($conecta->error): {
  die("Error en la consulta: " .$conecta->error);
 } endif;


 $Inner= "SELECT u.Id_Usuario, u.Nombre, u.ApellidoP, u.ApellidoM, u.Nick, u.Id_Tusuario, t.Id_Tusuario, t.NombreTusu 
 FROM usuarios u INNER JOIN tusuario t ON u.Id_Tusuario = t.Id_Tusuario";
 $Ejin=$conecta->query($Inner);



/*
$Inner = "SELECT u.Id_Usuario, u.Nombre, u.ApellidoP, u.ApellidoM, u.Nick, u.Id_Tusuario, t.Id_Tusuario, t.NombreTusu 
        FROM usuarios 
        INNER JOIN tusuario t ON u.Id_Tusuario = t.Id_Tusuario";

// Ejecutar la consulta y obtener los resultados
$resultado = $conecta->query($sql);

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
  <div class="container">
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
          <?php while($row=$Ejin->fetch_array()){?>
            <tr>
              <td><?php  echo $row ['Nombre']; ?></td>
              <td><?php  echo $row ['ApellidoP']; ?></td>
              <td><?php  echo $row ['ApellidoM']; ?></td>
              <td><?php  echo $row ['Nick']; ?></td>
              <td><?php  echo $row ['NombreTusu']; ?></td>
              <td><a href="editar.php?Id_Usuario=<?php echo $row['Id_Usuario']; ?>">-Editar</a> <a href="#">-Borrar</a></td>
              
                
            </tr>

            <?php }?>
          </tbody>
         </table>
      

    </div>
  </div>



  </div>
</body>
</html>