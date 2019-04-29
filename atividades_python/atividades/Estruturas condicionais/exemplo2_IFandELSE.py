# Exemplo 2 utilizando o IF e ELSE
num = int(input("Digite um numero: "))

resto = (num % 2)  # pegando o resto da divisao

if resto == 1:
    resultado = "impar"  # atribuindo o valor impar a variavel

else:
    resultado = "par"  # atribuindo o valor par a variavel

print("O numero digitado é %s" % resultado)  # Exibindo o resultado
