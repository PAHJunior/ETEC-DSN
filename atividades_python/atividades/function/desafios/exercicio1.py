def maior(a, b):
    if(a > b):
        return a
    else:
        return b

num1 = int(input('Digite o primeiro numero: '))
num2 = int(input('Digite o segundo numero: '))
print('Entre os numeros %i e %i o maior é: %i: '% (num1, num2, maior(num1,num2)))
