# Exemplo 1 utilizando o IF
num = int(input("Digite um numero: "))

resto = (num % 2)  # pegando o resto da divisao

if resto == 1:
    resultado = "impar"  # atribuindo o valor impar a variavel

if resto == 0:
    resultado = "par"  # atribuindo o valor par a variavel

print("O numero digitado é %s" % resultado)  # Exibindo o resultado
