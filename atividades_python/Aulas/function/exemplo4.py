#  verifica se é par
def epar(x):
    return x % 2 == 0


#  criando a funcao para verificar se é par ou impar
def parORimpar(y):
    #  se for par retorna "par"
    if epar(y):
        return 'par'
    #  se nao retorna "impar"
    else:
        return  'impar'

# Programa principal.

#  Recebendo
num = int(input('Digite um numero: '))
print('%d %s '%(num, parORimpar(num))) #Chama a funcao e verifica se é par ou impar
