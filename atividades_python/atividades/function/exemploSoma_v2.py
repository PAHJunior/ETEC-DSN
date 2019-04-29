#  Definindo a função de soama passando dois parametros
def somar(a,  b):
    #  Retornando a soma dos A + B
    return a+b

def subtracao(a, b):
    return a-b


#  PROGRAMA PRINCIPAL
#  Pegando o primeiro numero do usuario
num1 = int(input('Digite o primeiro numero: '))

#  Pegando o segundo numero do usuario
num2 = int(input('Digite o segundo numeronumero: '))

#  chamando a funcão soma passando os dois parametros
print('Somando ', somar(num1,num2))

