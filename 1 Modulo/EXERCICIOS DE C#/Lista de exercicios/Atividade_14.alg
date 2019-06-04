Algoritmo "semnome"
Var

inicioDiaC1,inicioDiaC2,inicioDiaC3,fimDiaC1,fimDiaC2,fimDiaC3,qtdC1,qtdC2,qtdC3,lucroC1,lucroC2,lucroC3,lucrofinal: real
Inicio
      Escreva("Digite a quantidade de C1 no inicio do dia")
      leia (inicioDiaC1)
      Escreva("Digite a quantidade de C1 no Fim do dia")
      leia (fimDiaC1)
      
      Escreva("Digite a quantidade de C2 no inicio do dia")
      leia (inicioDiaC2)
      Escreva("Digite a quantidade de C2 no Fim do dia")
      leia (fimDiaC2)
      
      Escreva("Digite a quantidade de C3 no inicio do dia")
      leia (inicioDiaC3)
      Escreva("Digite a quantidade de C3 no Fim do dia")
      leia (fimDiaC3)
      
      qtdC1 <- (inicioDiaC1-fimDiaC1)
      qtdC2 <- (inicioDiaC2-fimDiaC2)
      qtdC3 <- (inicioDiaC3-fimDiaC3)
      
      
      
      lucroC1 <- ((qtdC1*18)*30)/100
      lucroC2 <- ((qtdC2*25)*25)/100
      lucroC3 <- ((qtdC3*20)*20)/100
      lucrofinal <- lucroC1+lucroC2+lucroC3
      
      escreval ("A quantidade de colares C1 vendidas foi de ", qtdC1 ," e o lucro foi de ", lucroC1)
      escreval ("A quantidade de colares C2 vendidas foi de ", qtdC2 ," e o lucro foi de ", lucroC2)
      escreval ("A quantidade de colares C3 vendidas foi de ", qtdC3 ," e o lucro foi de ", lucroC3)
      escreval ("O lucro final do dia é de ", lucrofinal)
Fimalgoritmo