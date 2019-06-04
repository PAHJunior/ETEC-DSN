// JavaScript Document

$(document).ready(function(){
	
	/*** VALIDAÇÃO COM JQUERY ***/

	/*Definição das regras de validação.*/

	$("#cadastro").validate({

		rules:{

			nome:{
				required:true,
				minlength:5
			},

			email:{
				required:true,
				email:true
			},

			senha:{
				required:true,
				rangelength:[4,10]	
			},

			senha2:{
				required:true,
				equalTo:"#senha"	
			},
			jungle:{
				required:true,
			},

		},messages:{
			jungle:{
				required:"Selecione alguma coisa"

			},

			nome:{
				required:"Nome obrigatório.",
				minlength:"Minimo de 5 caracteres."
			},

			email:{
				required:"E-mail obrigatório.",
				email:"E-mail inválido."
			},

			senha:{
				required:"Senha obrigatória.",
				rangelength:"Minimo de 4 máximo de 10 caracteres."	
			},

			senha2:{
				required:"Senha obrigatória.",
				equalTo:"As senhas não são iguais."	
			},																						
		},
		submitHandler: function(form) { 
            alert('Cadastro realizado com sucesso');
            return false;
        }
	});
});