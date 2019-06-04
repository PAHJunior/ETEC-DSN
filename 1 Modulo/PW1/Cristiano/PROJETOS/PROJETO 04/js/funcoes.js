// JavaScript Document
$(document).ready(function(){
				
				//*** CONCEITO DE ITERAÇÃO IMPLICITA  ***//
				$("a").css("color", "#f00")
				      .css("text-decoration", "none");
				
				
					$("a").click(function(){
						
						//*** CONCEITO DE ENCADEAMENTO  ***//
						
						//Configura a cor de fundo, cor do texto, oculta elemento, 
						//efeito de toggle.
						$("#titulo").css("background-color", "#000")
						            .css("color", "#fff")
									.text("JQuery é vida")
									.hide()
									.fadeToggle(3000);
						
						});
				
				});