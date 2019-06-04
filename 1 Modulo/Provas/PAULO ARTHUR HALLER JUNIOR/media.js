function media() {
	var n1 = document.getElementById("n1").value;
	var n2 = document.getElementById("n2").value;
	var peso1 = document.getElementById("p1").value;
	var peso2 = document.getElementById("p2").value;

	var soma = Number(peso1)+Number(peso2);
	var media =	((Number(n1)*Number(peso1))+(Number(n2)*Number(peso2))) / soma;
	alert("A media ponderada é de " + media.toFixed(2));
}