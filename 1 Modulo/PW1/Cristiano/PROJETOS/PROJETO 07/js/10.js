	$(document).ready(function(){

		//Manipilando atributos.
		$("div.botao").click(function(){

			//Recupera um titlulo através da manipula do atributo title.
			//alert($("img").attr("title"));

/*			
			//Altera a imagem e o seu titulo.
			$("img").attr("src", "img/tech.png");
			$("img").attr("title", "Tecnologia");
			*/

			//Altera a imagem e o seu titulo com padrão JSON.
/*			$("img").attr({

				src: "img/tech.png",
				title: "Tecnologia"

			});
*/
		});

		//Remove um atributo.
/*		$("div#remover").click(function(){

			$("img").removeAttr("src");


		});

		
		//Adicona uma classe
		$("img").mouseover(function(){

			$("img").addClass("destaque");

		});*/
		

		//toggleClass (hobilita/desabilita a aplicação da classe).
		$("img").mouseover(function(){

			$("img").toggleClass("destaque");

		});

		$("img").mouseout(function(){

			$("img").toggleClass("destaque");

		});

	});
