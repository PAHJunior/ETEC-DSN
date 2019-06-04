Algoritmo "Atividade_03"

Var

ano, mes, dia, idadeDias, idade, faltaDia: inteiro

Inicio
      escreva("Digite o ANO de nascimento ")
      leia(ano)
      escreva("Digite o MES de nascimento ")
      leia(mes)
      escreva("Digite o DIA de nascimento ")
      leia(dia)
      
      idade <- 2018-ano
      
      mes <- mes*30
      idadeDias <- idade*365+mes+dia

      se (idade >= 18) ENTAO
         escreval("Você tem",idade," anos e ", idadeDias," em dias")
         escreval("Você é maior de idade")
         faltaDia <- idadeDias - 6570
         escreval("E falta, ", faltaDia ," dias para seu aniversario de", idade+1," anos")
      senao
         faltaDia <- 6570 - idadeDias
         escreval("Você tem",idade," anos e em dias", idadeDias)
         escreval("Você é menor de idade")
         escreval("e falta ",faltaDia," dias para vc completar a maior idade")
      fimse

Fimalgoritmo