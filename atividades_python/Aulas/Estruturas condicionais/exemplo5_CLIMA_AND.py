#Exemplo 5 utlizando and

# Recebendo a temperatura
temp = float(input(("Digite a temperatura atual: ")))

#Se a temperatura for menor ou igual a 19
if temp <= 10:
    print("O Clima esta muito frio")

# se a temperatura for maior que 10 e menor igual a 10
elif temp > 10 and temp <= 10:
    print("O clima esta frio")

# temperatura menor 20 e menor igual a 25
elif 20 < temp <= 25:
    print("O Clima esta agradavel")

# temperatura menor que 25 e menor igual a 30
elif 25 < temp <= 30:
    print("O Clima está quente!")

#Senão
else:
    print("O Clima es´ta muito quente")
