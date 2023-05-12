function validar() {
    var nombre=document.getElementById('nickname2').value;
    var apep=document.getElementById('Nombres').value;
    var apem=document.getElementById('Apellidos').value;
    var fec=document.getElementById('mail').value;
    var cor=document.getElementById('password').value;
    var free=document.getElementById('user_free').value;
   
   
   
    if (nombre=="") {
alert("ingrese su nickname");    
}else if (apep=="") {
alert("ingrese su nombre");
}else if (apem=="") {
alert("ingrese su apellidos");
}else if(fec==""){
alert("falta ingresar su email o no tiene el caracter @");
}else if (cor==""){
alert("falta ingresar su password ");
}else if(free=""){
alert("selecciona ");
}
}