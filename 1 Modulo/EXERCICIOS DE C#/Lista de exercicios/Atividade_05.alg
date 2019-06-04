Algoritmo "semnome"
Var
   pontoA,pontoB,distancia,posto1,posto2,posto3: real
Inicio

      escreval("Digite o KM do Ponto A")
      leia (pontoA)
      escreval("Digite o KM do Ponto B")
      leia (pontoB)
      
      distancia <- (pontoB-pontoA)/4
      escreval ("Deverar tem um posto a cada ",distancia," Km ")
      
      posto1 <- pontoA + distancia
      escrevaL("Haverá um posto no Km", posto1)
      posto2 <- posto1 + distancia
      escrevaL("Outro posto no Km ", posto2)
      posto3 <- posto2 + distancia
      escrevaL("Outro posto no Km ", posto3)

Fimalgoritmo