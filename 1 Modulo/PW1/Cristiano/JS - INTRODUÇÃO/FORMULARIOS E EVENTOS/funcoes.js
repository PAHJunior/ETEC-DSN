function calculaIMC() { //abertura da chave do corpo da função
	var altura;
	var peso;

	altura = document.getElementById("txt_altura").value;
	peso = document.getElementById("txt_peso").value;

	var imc = Number(peso)/ (Number(altura) * Number(altura));


	alert("Seu imc é "+imc.toFixed(2));

	if (imc < 18.5) {
		alert("Muito Magro" + imc.toFixed(2));
	}

	else if((imc >= 18.5) && (imc <= 24.9)){

		alert("SEU IMC É "+imc.toFixed(2)+" NORMAL "+ imc.toFixed(2));
	
	}

	else if((imc == 25) && (imc <= 29.9) ){
		alert("SOBREPESO"+ imc.toFixed(2));
	}

	else if((imc == 30.0) && (imc <= 34.9)) {
		alert("OBSEDADE TIPO I"+ imc.toFixed(2));
	} 
	
	else if((imc == 35.0) && (imc <= 39.9)){
		alert("OBSEDADE TIPO II"+ imc.toFixed(2));
	}
	
	else{
		alert("OBSEDADE TIPO III"+ imc.toFixed(2));
	}
}