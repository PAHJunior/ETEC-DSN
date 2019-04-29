from Conversor_POO import Conversor

frase = input("Digite uma frase: ")
op = input("Digite uma opção: (1 , 2 , 3 , 4): ")


convert = Conversor(frase)

if op == "1":
    convert.maiuscula()

elif op == "2":
    convert.minuscula()

elif op == "3":
    convert.capitular()

elif op == "4":
    convert.title()

else:
    print("Opção invalida")

if op == "1" or op == "2" or op == "3" or op == "4":
    print(" O resultado é %s"% convert.resultado)
