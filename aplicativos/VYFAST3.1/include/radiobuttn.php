<?php

include 'include/query.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Radio button</title>

</head>
<body>

<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">

<input type="text" name="name" id="" placeholder="nombre"> <br>

<label for="">gender</label>
<div>
    <label for="">male</label>
<input type="checkbox" name="male" onclick="deseleccionarOtros(this)"> <br>
<label for="">female</label>
<input type="checkbox" name="female" onclick="deseleccionarOtros(this)">
</div>


<input type="submit" value="Enviar" name="btnSend">

</form>
    


<script>
  function deseleccionarOtros(clickedCheckbox) {
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    for (var i = 0; i < checkboxes.length; i++) {
      if (checkboxes[i] !== clickedCheckbox) {
        checkboxes[i].checked = false;
      }
    }
  }
</script>
</body>
</html>



<?PHP


if(isset($_POST['btnSend'])){
    $name = $_POST['name'];
    $gender = '';
    if(isset($_POST['male'])&& $_POST['male']=='on'){
        $gender = '1';
        $q = "INSERT INTO usuarios(id_usuario, nombre, id_genero, imagen) VALUES('$name', '$gender','ejemplo');";
        $ejq = $conecta->query($q);
        if($ejq>0){
            header("location:registro.php");
        }
    }elseif(isset($_POST['female'])&& $_POST['female']=='on'){
        $gender = '2';
        $q = "INSERT INTO usuarios(id_usuario, nombre, id_genero, imagen) VALUES('$name', '$gender','ejemplo');";
        $ejq = $conecta->query($q);
        if($ejq>0){
            header("location:registro.php");
        }
    }
    
    

}

?>