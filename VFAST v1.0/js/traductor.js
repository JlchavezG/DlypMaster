var check=document.querySelector(".check");
check.addEventListener('click',idioma);

function idioma(){
	let id=check.checked;
	if (id==true){
		location.href="escritorio en Free.html";
	}else{
		location.href="escritorio Free.html";
	}
}