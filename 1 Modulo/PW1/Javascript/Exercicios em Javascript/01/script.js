function atividade1() {
	alert("Olha mundo"); // ALERTA COM A MSG OLA MUNDO
}

function atividade2() {

	var numero = Math.floor(Math.random() * 50) // GERA NUMEROS ALEATORIOS ENTRE 0 - 50
	alert(numero);
}

function atividade3() {
	window.open('http://www.imdb.com'); // ABRIR UM LINK EXTERNO PARA A PAGINA IMDB
}

function atividade4() {
	document.getElementById('titulo').innerHTML = "EAE MAN"; //ALTERAR O TITULO DA PAGINA
}

function atividade5() {
	var resto = 5 % 3;
	alert(resto);
}

function atv6() {
	alert("Primeira caixa ativida");
}

function atv7() {
	var numero = document.getElementById('n1').value;

	if (numero > 0 && numero <= 10) {
		alert("insulficiente");
	}else if(numero > 10 && numero < 14){
		alert("Bom");
	}else if(numero > 14){
		alert("Muito bom");
	}
}

