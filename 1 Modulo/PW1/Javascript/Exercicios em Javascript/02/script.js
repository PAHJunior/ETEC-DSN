function atv1() {
	alert("Olá mundo");
}

/*GERAR NUMERO ALEATORIO ENTRE 0 E 50*/
function numerosAleatorios(){
	/*
	var numero Math.floor(Math.random() * 2);
	var numero Math.floor(Math.random() * 65536) - 32768;
	*/
	var numero = Math.floor(Math.random() * 65536) - 32768;
	alert(numero);
}

//ABRIR SITE
function abrirSite(){
	window.open("http://www.imdb.com");
}

//RESTO DA DIVISÃO
function resto() {
	var n1 = 25;
	var n2 = 3;
	var resto = n1 % n2;
	alert(resto);
}

function foco1(){
	console.log("primeira caixa ativida");
}
function perdeufoco(){
	console.log("perdeu o foco");
}

function verificarNumero(){
	var n1 = document.getElementById('verificar').value;

	if(n1 == 0 && n1 < 10){
		alert("insulficiente");
	}else if (n1 >= 10 && n1 < 14){
		alert("Bom");
	}else if (n1 >= 14){
		alert("Muito bom");
	}
}