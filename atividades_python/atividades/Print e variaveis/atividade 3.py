#Faça um programa que solicite o preço de uma mercadoria e o percentual de desconto.
#Então calcule e exiba o valor do desconto e o preço a pagar

#Recebendo o valor da mercadoria
mercadoria = int(input('Digite o preço da mercadoria'))

#Recebdno o valor do desconto
desconto = int(input('Digite o desconto'))

#Calculando o percentual de desconto
precoFinal = mercadoria-(mercadoria*(desconto/100))


#Exibindo o preço da mercadoria antes dod esconto
#E exibindo o valor do desconto a ser aplicado
print('o preço da mercadoria é de %i e o desconto vai ser de %i'% (mercadoria, desconto))

#Exibindo o preço final já com o desconto incluso
print(' O preço final é de %i'% (precoFinal))

