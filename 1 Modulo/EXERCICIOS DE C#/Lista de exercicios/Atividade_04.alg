Algoritmo "semnome"

Var

sal, inss, salarioLiquido, descontoFaltas: real
faltas: inteiro

Inicio
      escreva("Digite o seu salario ")
      leia(sal)
      escreva("Quantos dias você faltou? ")
      leia(faltas)
      inss <- sal*0.12
      descontoFaltas <- (sal/30)*faltas
      salarioLiquido <- sal-descontoFaltas-inss
      
      escreva("O Salario Bruto é de R$ ", sal," o valor de INSS é de R$ ", inss," o valor de desconto devido a faltas é de R$ ", descontoFaltas," o Salario Liquido é de R$ ", salarioLiquido)

      

Fimalgoritmo