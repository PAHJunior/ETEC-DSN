algoritmo "semnome"
var
   emprestimo, total, valor_parcelado, juros: Real
   parcelas: inteiro
inicio
      juros <- 20 //20% porcento
      Escreva("Qual é o valor do emprestimo ?")
      Leia (emprestimo)
      Escreva("Quantas Parcelas ?")
      Leia (parcelas)
      se (parcelas = 10) entao
         valor_parcelado <- ((emprestimo*juros/100)+emprestimo)/parcelas
         
      Escreva(valor_parcelado)
      fimse
fimalgoritmo