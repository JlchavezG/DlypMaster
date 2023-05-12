<?php
include "connect.php";

$consulta="SELECT * FROM usuarios ORDER BY Nombre  ASC"  ;
$ejconsul=$conecta->query($consulta);

//$separar=$ejconsul->fetch_array();

$consulta = "SELECT * FROM usuarios ORDER BY Nombre ASC";
$ejconsul = $conecta->query($consulta);

$sql = "SELECT u.Id_Usuario, u.Nombre, u.ApellidoP, u.ApellidoM, u.Nick, u.Id_Tusuario, t.Id_Tusuario, t.NombreTusu 
        FROM usuarios u
        INNER JOIN tusuario t ON u.Id_Tusuario = t.Id_Tusuario";

// Ejecutar la consulta y obtener los resultados
$resultado = $conecta->query($sql);

// Verificar si hay errores en la consulta
if ($conecta->error) {
    die("Error en la consulta: " . $conecta->error);
}

/* Obtener la imagen de la base de datos
$sql = "SELECT  id_img, imagen FROM fotos WHERE id = $id";
$resultado = $conn->query($sql);

if ($resultado->num_rows > 0) {
    $fila = $resultado->fetch_assoc();
    $tipo_imagen = $fila['tipo_imagen'];
    $imagen = $fila['imagen'];

    // Establecer encabezados HTTP para la imagen
    header("Content-type: $tipo_imagen");
    header('Content-Disposition: inline');
    header('Content-Length: ' . strlen($imagen));

    // Mostrar la imagen
    echo $imagen;
} else {
    echo "Imagen no encontrada";
}

$conn->close();

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
          <?php while($row=$ejconsul->fetch_array()){?>
            <tr>
              <td><?php  echo $row ['Nombre']; ?></td>
              <td><?php  echo $row ['ApellidoP']; ?></td>
              <td><?php  echo $row ['ApellidoM']; ?></td>
              <td><?php  echo $row ['Nick']; ?></td>
              <td><?php  echo $row ['Id_Tusuario']; ?></td>
              <td><a href="#">-Editar</a> <a href="#">-Borrar</a></td>
            
    
            </tr>
            
    
            <?php }?>
          </tbody>
         </table>
      

    </div>
  </div>


  </div>
</body>
</html>