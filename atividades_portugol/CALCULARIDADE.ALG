Algoritmo "CalcularIdade"
Var
   AnoNascimento, AnoAtual, Idade: inteiro
   
Inicio
      Escreval("Em que ano estamos?")
      Leia (AnoAtual)
      Escreval("Em que ano voc� nasceu?")
      Leia (AnoNascimento)
      Idade <- AnoAtual - AnoNascimento
      Escreva("Em ", AnoAtual, "voc� ter� ", idade," anos de idade, ")
      
      Se (Idade >= 18) entao
           escreval ("e voc� ja tera atingido a maior idade")
      Senao
           escreval ("e voc� ainda n�o atingiu a maior idade")
      FimSe
Fimalgoritmo

