algoritmo "FCdH"
var
   vet  :vetor [0..11] de inteiro
   i,j  :inteiro
inicio
para i de 0 ate 11 faca
   vet[i] <- Randi(12)
   se i > 0 então
      j <- 0
      enquanto (j < i) faca
         se vet[i] = vet[j] então
            vet[i] <- randi(12)
            j <- 0
         senao
            j <- j+1
         fimse
      fimenquanto
   fimse
   escreval(vet[i])
fimpara
fimalgoritmo