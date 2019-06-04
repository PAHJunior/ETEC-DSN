function multiplicacao(){

	var x = document.getElementById("numero").value;
	
	var square = function(numero){
		numero = x;
		return numero * numero;
	}
	
	alert(x+" * "+x+" é igual a "+square(numero));
	 
}