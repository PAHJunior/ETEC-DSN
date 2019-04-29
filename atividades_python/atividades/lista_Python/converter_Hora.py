def converteHora(hora24, minuto24):
    #  Validando hora
    if (hora24 > 23) or (hora24 < 0) or (minuto24 < 0) or (minuto24 > 59):
        return None

    #  Se for menor que 12 , AM
    if (hora24 < 12):
        if (hora24 == 0):
            hora24 = 12
        return '%02d:%02d AM' % (hora24, minuto24)


    #  se for maior que 12 , subtraia 12
    #  para poder retornar um valo em PM
    if (hora24 > 12):
        hora24 -= 12
    return '%02d:%02d PM' % (hora24, minuto24)


# Entrada de dados
continuar = 'S'
while (continuar == 'S'):
    hora = int(input('Informe o valor da hora: '))
    minuto = int(input('Informe o valor dos minutos: '))

    print(converteHora(hora, minuto))

    continuar = input('Deseja continuar (S/N): ').upper()