#Escreva um programa que calcule o aumento
#de um salario. Ele deve solicitar o valor do salario e a porcentagem do aumento
#Entao retorna o valor do aumento e o novo salario

#Recebendo o salario
salario = int(input('Digite o seu salario: '))

#Recebendo a porcentagem de aumento
porcentagem = int(input('Digite a porcentagem de aumento: '))

#Calculando o aumento com base na porcentagem
resultado = salario+(salario*(porcentagem/100))

#Exibindo o aumento do salario
print(resultado)
