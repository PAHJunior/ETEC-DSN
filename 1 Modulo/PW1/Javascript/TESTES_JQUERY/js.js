$(document).ready(function() {

	$("#lampada").mouseover(function() {
		$("#lampada").attr({
			src: "../img/acesa.jpg"
		});	
	}).mouseout(function() {
		$("#lampada").attr({
			src: "../img/apagada.jpg"
		});
	});
});