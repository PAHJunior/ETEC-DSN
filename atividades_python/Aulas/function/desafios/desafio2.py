# Solicte 2 numeros e responda se o 1 é ou nao multiplo do 2

def eMultiplo(num1, num2):
    return num1 % num2 == 0


def verificar(n1, n2):
    eMultiplo(n1, n2)
    if(eMultiplo)
        return 'é multiplo'
    else:
        return 'Não é multiplo'


#codigo principal
v1 = int(input('Digite o primeiro numero: '))
v2 = int(input('Digite o segundo numero: '))

print('%i %s de %i'% v1, v2, verificar(v1,v2))
