altura = float(input("Digite sua altura: "))
peso = float(input("Digite seu peso: "))
imc = peso / (altura * altura) # Calculo imc

print("Se imc é %5.2f" % imc) #Exibindo o IMC

if imc <= 17.00:
    print("Muito a baixo do peso")

elif imc <= 18.49:
    print("Abaixo do peso")

elif imc <= 24.99:
    print("Peso normal")

elif imc <= 29.00:
    print("Acima do peso")

elif imc <= 34.99:
    print("Obessidade I")

elif imc <= 39.99:
    print("Obesidade II")

else:
    print("Obesidade III")
