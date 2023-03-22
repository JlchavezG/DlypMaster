function validar(){
			var user = document.getElementById('Name').value;
			var cc = document.getElementById('Pass').value;
			
			
			if (user == "")  
			{
				alert("FALTA rellenar el campo Nombre")
			}

			else if (cc == "") {
				alert("FALTA rellenar el campo Contraseña")
			}


		    else 
		    	{
		    		alert("Bienvenido a V. FAST, tus datos son correctos_"+user+"_"+cc);
		    	}
		    
		}