Algoritmo "CalcularIdade"
Var
   AnoNascimento, AnoAtual, Idade: inteiro
   
Inicio
      Escreval("Em que ano estamos?")
      Leia (AnoAtual)
      Escreval("Em que ano você nasceu?")
      Leia (AnoNascimento)
      Idade <- AnoAtual - AnoNascimento
      Escreva("Em ", AnoAtual, "você terá ", idade," anos de idade, ")
      
      Se (Idade >= 18) entao
           escreval ("e você ja tera atingido a maior idade")
      Senao
           escreval ("e você ainda não atingiu a maior idade")
      FimSe
Fimalgoritmo

