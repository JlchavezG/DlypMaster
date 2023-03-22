function validar(){
			var nickname = document.getElementById('Nick').value;
			var nombre = document.getElementById('Name').value;
			var apellido = document.getElementById('LastName').value;	
		    var fnac = document.getElementById('BornD').value;		
			var email = document.getElementById('Correo').value;
		    var cc = document.getElementById('Pass').value;


			if (nickname == "")  
			{
				alert("FALTA rellenar el campo Nickname")
			}

			else if (nombre == "") {
				alert("FALTA rellenar el campo Nombre")
			}

			else if (apellido == "") {
				alert("FALTA rellenar el campo Apellidos")
			}

			else if (fnac == "") {
				alert("FALTA rellenar el campo Fecha de Nacimiento")
			}

			else if (email == "") {
				alert("FALTA rellenar el campo Correo Electrónico")
			}

			else if (cc == "") {
				alert("FALTA rellenar el campo Contraseña")
			}

		    else
		    	{
		    		alert("Bienvenido a V. FAST, tus datos son correctos_"+nickname+"_"+nombre+"_"apellido+"_"+email+"_"cc);
		    	}
		}