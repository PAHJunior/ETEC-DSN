Algoritmo "semnome"

Var

sal, inss, salarioLiquido, descontoFaltas: real
faltas: inteiro

Inicio
      escreva("Digite o seu salario ")
      leia(sal)
      escreva("Quantos dias voc� faltou? ")
      leia(faltas)
      inss <- sal*0.12
      descontoFaltas <- (sal/30)*faltas
      salarioLiquido <- sal-descontoFaltas-inss
      
      escreva("O Salario Bruto � de R$ ", sal," o valor de INSS � de R$ ", inss," o valor de desconto devido a faltas � de R$ ", descontoFaltas," o Salario Liquido � de R$ ", salarioLiquido)

      

Fimalgoritmo