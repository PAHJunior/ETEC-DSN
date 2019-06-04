#   DESAFIO 03

nomeCompleto = input('Digite seu nome completo: ').title() #RECEBENDO O NOME DO USUARIO
nomeSeparado = nomeCompleto.split(' ') # SEPARANDO O NOME USANDO O SPLIT " "
nomeAbreviado = (nomeSeparado[0], nomeSeparado[-1]) #PEGANDO O PRIMEIRO NOME E O ULTIMO
nomeAbreviado = " ".join(nomeAbreviado) # JUNTANDO OS NOMES EM UMA NOVA STRING
print('Olá %s'% (nomeAbreviado)) #PRINT DO NOME ABREVIADO