algoritmo "CalcularIMC"
var
   Peso, Altura, imc: real
inicio
   escreval("                        TESTE  IMC ")

   Escreva("Mssa (KG): ")
   Leia (Peso)
   Escreva("Altura (m): ")
   Leia (Altura)
   imc <- Peso / (Altura ^ 2)
   Escreva ("IMC: ", imc:5:2)

   se (imc < 17) entao
      escreval ("Seu IMC est� muito abaixo do peso")
   senao (imc => 17) entao
      escreval ("Seu IMC est�Abaixo do peso")
   fimse
   

   se (imc => 18.5) entao
      escreval ("Seu IMC est� normal.")
   senao (imc => 25) entao
      escreval ("Seu IMC est� acima do peso")
   fimse


   se (imc => 30) entao
      escreval ("Obesidade I")
   senao (imc => 35) entao
      escreval ("Obesidade II")
   fimse


   se (imc => 40) entao
      escreval ("Obesidade III")
   fimse

fimalgoritmo