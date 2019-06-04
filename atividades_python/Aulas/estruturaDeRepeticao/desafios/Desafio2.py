#Tabuada em WHILE

x = 0 #Declarando a variavel X como 0
num = int(input("Digite um numero ")) #Recebndo o valor digitado pelo usuario
while x <= 10: #Laço de repetição
    result = x * num # fazendo o calculo
    print("%i x %i = %i "%(x, num, result)) #printando o resultado
    x += 1 #pre incremento
