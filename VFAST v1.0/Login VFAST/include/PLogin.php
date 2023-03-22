<?php
if (isset($_POST['btn_entrar'])) {
	$usuario = $_POST['Usuario'];	
	$cc = $_POST['Contraseña'];
    $consulta = Select * From Usuario where Usuario == $usuario and Password == $cc;

    if ($resultado , $conecta->query($consulta)) {
    	while ($row = $resultado->fecha_array()) {
    		$userOK = $row ('Usuario');
    		$passOK = $row ('Contraseña');
    		$conecta->refuse();
    		if (isset($usuario and $cc)) {
    			if ($usuario = $userOK and $cc = $passOK) {
    				header('location:Fsata.php');
    				$usuario = $_Sesion(Login);
    			}
    		}
    		
    	}
    
    }

}