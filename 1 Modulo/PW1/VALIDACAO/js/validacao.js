// JavaScript Document

$(document).ready(function(){
	
		/*** VALIDAÇÃO COM JQUERY ***/
		
		/*Definição das regras de validação.*/
		
		$("#meu_form").validate({
			
				rules:{
					
					nome:{
						
							required:true,
							minlength:5
						
						},
						
					email:{
						
							required:true,
							email:true
						
						},
						
					site:{
						
							url:true
						
						},
						
					senha:{
					
							required:true,
							rangelength:[4,10]	
						
					},
					
					senha2:{
						
						required:true,
						equalTo:"#senha"	
						
					},
					
					termos:{
						
							required:true
						
						}
					
					},messages:{
						
					nome:{
						
							required:"Nome obrigatório.",
							minlength:"Minimo de 5 caracteres."
						
						},
						
					email:{
						
							required:"E-mail obrigatório.",
							email:"E-mail inválido."
						
						},
						
					site:{
						
							url:"Informe uma url válida."
						
						},
						
					senha:{
					
							required:"Senha obrigatória.",
							rangelength:"Minimo de 4 máximo de 10 caracteres."	
						
					},
					
					senha2:{
						
						required:"Senha obrigatória.",
						equalTo:"As senhas não são iguais."	
						
					},
					
					termos:{
						
							required:"Você precisa aceitar os termos."
						
						}																								
						
				}
			
			});
	
	});