algoritmo "Parcelamento"
var
   emprestimo, total, valor_parcelado, juros: Real
   parcelas: inteiro
inicio
      juros <- 20 //20% porcento
      Escreval("Qual é o valor do emprestimo ?")
      Leia (emprestimo)
      Escreval("Quantas Parcelas ? Entre 1 a 12")
      Leia (parcelas)
      
      se (parcelas = 1) entao
         valor_parcelado <- ((emprestimo*juros/100)+emprestimo)/parcelas
      senao (parcelas = 2) entao
         valor_parcelado <- ((emprestimo*juros/100)+emprestimo)/parcelas
      fimse
         
         
      se (parcelas = 3) entao
         valor_parcelado <- ((emprestimo*juros/100)+emprestimo)/parcelas
      senao (parcelas = 4) entao
         valor_parcelado <- ((emprestimo*juros/100)+emprestimo)/parcelas
      fimse
      
      se (parcelas = 5) entao
         valor_parcelado <- ((emprestimo*juros/100)+emprestimo)/parcelas
      senao (parcelas = 6) entao
         valor_parcelado <- ((emprestimo*juros/100)+emprestimo)/parcelas
      fimse
      
      
      
      se (parcelas = 7) entao
         valor_parcelado <- ((emprestimo*juros/100)+emprestimo)/parcelas
      senao (parcelas = 8) entao
         valor_parcelado <- ((emprestimo*juros/100)+emprestimo)/parcelas
      fimse
      
      
      se (parcelas = 9) entao
         valor_parcelado <- ((emprestimo*juros/100)+emprestimo)/parcelas
      senao (parcelas = 10) entao
         valor_parcelado <- ((emprestimo*juros/100)+emprestimo)/parcelas
      fimse



      Escreva("O Valor parcelado em reais será de R$",valor_parcelado)
fimalgoritmo