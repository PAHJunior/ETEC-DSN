def verificaPositivo(valor):
    if (valor > 0):
        return 'Positivo'
    elif (valor == 0):
        return 'Neutro'
    else:
        return 'Negativo'

numero = int(input('Informe um numero: '))
print('Resultado: %s' % verificaPositivo(numero))
