<?php
include 'include/connect.php';
include 'include/querys.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <title>Consulta dinamica</title>
</head>
<body>
    <div class="container">
        <h2 class="text-center display-6">Tabla Dinámica</h2>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido Paterno</th>
                    <th scope="col">Apellido Materno</th>
                    <th scope="col">Username</th>
                    <th scope="col">Email</th>
                    <th scope="col">Password</th>
                </tr>
            </thead>
            <tbody>

                <?php while($cortar = $tusuarioej->fetch_array()){ ?>
                <tr>
                    <td> <?php echo $cortar['Nombre'];?> </td>
                    <td> <?php echo $cortar['ApellidosP'];?> </td>
                    <td> <?php echo $cortar['ApellidoM'];?> </td>
                    <td> <?php echo $cortar['Nick'];?> </td>
                    <td> <?php echo $cortar['Email'];?> </td>
                    <td> <?php echo $cortar['Password'];?> </td>
                </tr>
                    <?php } ?>
            </tbody>
            
        </table>
    </div>


<script src="js/bootstrap.min.js"></script>
</body>
</html> 
