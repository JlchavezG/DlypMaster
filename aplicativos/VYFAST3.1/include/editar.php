<?php
include 'connect.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <title>Editar Usuario</title>
</head>
<body>

<?php
if(isset($_POST['btnEdit'])){

    $id = $_POST['id'];
    $nombre = $_POST['Nombres'];
    $ApellidoP = $_POST['ApellidoP'];
    $ApellidoM = $_POST['ApellidoM'];
    $username = $_POST['Nick'];

    $q= "UPDATE `usuarios` SET `Nombre` = '$nombre', `ApellidoP` = '$ApellidoP', `ApellidoM` = '$ApellidoM', `Nick` = '$username' WHERE `Id_Usuario` = '$id'";
    $ejq= $conecta->query($q);

    if($ejq>0){
        header("location:tabla.php");
    }else
    {
        echo "Error";
    }




}else{

    $id = $_GET['Id_Usuario'];
    $q = "SELECT * FROM usuarios WHERE Id_Usuario = $id";
    $ejq = $conecta->query($q);

    $row = $ejq->fetch_assoc();
    $name = $row['Nombre'];
    $lastname = $row['ApellidoP'];
    $slastname = $row['ApellidoM'];
    $nickname = $row['Nick'];





?>



<div class="container text-center">
		<p class=" py-2">
		<h4>Modificacion del Usuario</h4>
		</p>
	</div>
	<div class="row justify-content-center h-100 ">
		<div class="col-sm-8 col-md-6 rounded">
			<div class="row">
				<div class="col-sm-10 col-md-12 col-lg-12">

					<form action="<?php echo $_SERVER['PHP_SELF']?>" method="POST">
						<div class="input-group mb-3">
							<span class="input-group-text" id="registro">
								<svg class="bi" width="32" height="32" fill="currentColor">
									<use xlink:href="../library/icons/bootstrap-icons.svg#person-circle" />
								</svg>

							</span>
							<input type="text" name="Nombres" class="form-control" value="<?php echo $name; ?>" placeholder="Nombre" aria-label="text" aria-describedaby="text" required>
							<div class="valid-feedback"> Nombre Valido</div>
							<div class="invalid-feedback"> Agregar Nombre</div>

						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="registro">
								<svg class="bi" width="32" height="32" fill="currentColor">
									<use xlink:href="../library/icons/bootstrap-icons.svg#person-circle" />
								</svg>
							</span>
							<input type="text" name="ApellidoP" class="form-control" value="<?php echo $lastname; ?>" placeholder="Apellido Paterno" aria-label="text" aria-describedaby="text" required>
							<div class="valid-feedback"> Apellido Valido</div>
							<div class="invalid-feedback"> Agregar Apellido</div>
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="registro">
								<svg class="bi" width="32" height="32" fill="currentColor">
									<use xlink:href="../library/icons/bootstrap-icons.svg#person-circle" />
								</svg>
							</span>
							<input type="text" name="ApellidoM" class="form-control" value="<?php echo $slastname; ?>" placeholder="Apellido Materno" aria-label="text" aria-describedaby="text" required>
							<div class="valid-feedback"> Apellido Valido</div>
							<div class="invalid-feedback"> Agregar Apellido</div>
						</div>
						<div class="input-group md-3">
							<span class="input-group-text" id="registro">
								<svg class="bi" width="32" height="32" fill="currentColor">
									<use xlink:href="../library/icons/bootstrap-icons.svg#person-circle" />
								</svg>
							</span>
							<input type="text" name="Nick" class="form-control" value="<?php echo $nickname; ?>" placeholder="nick name" aria-label="text" aria-describedaby="text" required>
							<div class="valid-feedback"> nick Valido</div>
							<div class="invalid-feedback"> Agregar nick</div>
						</div>

                        <input type="hidden" name="id" value="<?php echo $id; ?>">

						<div name="registro" class="d-grid  gap-2" >
                            <input type="submit" value="Actualizar" name="btnEdit" style="margin-top: 2rem ;" class="btn btn-outline-danger btn-sm ">
							
						</div>
					</form>

                    <?php } ?>
				</div>
			</div>
		</div>
	</div>


</body>
</html>