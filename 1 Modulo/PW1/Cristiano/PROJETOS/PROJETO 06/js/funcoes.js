// JavaScript Document

$(document).ready(function() {
	
	//Acessando e manipulando atributos de elementos HTML.
	/*$("div.botao").click(function(){
		
		alert($("img").attr("title"));
		
	});*/
	
	//Alterando imagens - 1º Forma:
	/*$("div.botao").click(function(){
		
		$("img").attr("src","img/tech.png")
		        .attr("alt","tech.png")
				.attr("title","Imagem tech");
	});*/
	
	//Alterando imagens - 2º forma (JSON):
	
	$("div.botao").click(function(){
		
		$("img").attr({	//FUNCÃO DE ATRIBUIÇÃO

		      src:"img/tech.png",
			  title:"Imagem tech",
			  alt:"Imagem tech"
	
	   });			
				
	});//Fim do botão de troca de imagem
	
	//Removendo atributos.
	$("div.botao#remover").click(function(){
		
			$("img").removeAttr("src");
			$("img").removeAttr("alt");
			$("img").removeAttr("title");
		
		});
		
	$("div.botao#ocultar").click(function(){
		
			$("img").hide();
		
		});
		
	$("div.botao#exibir").click(function(){
		
			$("img").show();
		
		});		
			
    
});