from idade import Idade


anoAtual = int(input('Digite o ano atual: '))
dia = int(input('Digite o dia do seu nascimento: '))
mes = int(input('Digite o mes do seu nascimento: '))
ano = int(input('Digite o ano do seu nascimento: '))

# Instanciando a classe idade
minhaIdade = Idade()
minhaIdade.idade(dia,mes,ano,anoAtual)
