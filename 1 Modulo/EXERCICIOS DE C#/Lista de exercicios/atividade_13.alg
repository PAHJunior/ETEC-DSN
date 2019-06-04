Algoritmo "semnome"

Var

amafalgafinho, valor : real
Inicio

escreval("Digite o total de amafalgafinho vendidos")
leia (amafalgafinho)
Se(amafalgafinho <10) ENTAO
   valor <- amafalgafinho * 15
   escreva ("Foram vendidos ", amafalgafinho, " por R$", valor )

Senao se(amafalgafinho >= 10 e amafalgafinho <100) ENTAO
   valor <- amafalgafinho * 8
   escreva ("Foram vendidos ", amafalgafinho, " por R$", valor)
Fimse

se(amafalgafinho >=100) entao
   valor <- amafalgafinho * 5
   escreva ("Foram vendidos ", amafalgafinho, " por R$", valor)
Fimse



Fimalgoritmo