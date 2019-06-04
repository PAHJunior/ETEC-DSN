#                   Desafio 2
# Crie um programa que solicite o codigo do produto e
#  a quantidade, calcule e exiba o total do item, 
# então solicite novamente código e quantidade até 
# que o usuario digite 0 (zero). Então exiba o total da compra

trakinas = 0 #  recebendo a quantidade de trakinas
doritos = 0 # recebendo a quantidade de doritos
cocaCola = 0 # recebendo a quantidade de coca-cola
todynho = 0 # recebendo a quantidade de todynho
total = 0 # variavel para guarda o total da compra

print(" 1 - Trakinas         R$ 2.00")
print(" 2 - Doritos          R$ 3.50")
print(" 3 - Coca-cola        R$ 8.50")
print(" 4 - Todynho          R$ 3.00")
#Laço de repetição
while True: 

    #Recebendo o codigo do produto
    valor = int(input("Digite o codigo do produto ou zero para sair: "))

    #Se for 0 , sair
    if valor == 0:
        break

    #Se for 1, socilitar quantidade e calcular
    if valor == 1:
        trakinas += int(input("Quantas Trankinas ?: "))
        total += trakinas * 2.00 #Multiplicando a quantidade pelo preço

    #Se for 2, socilitar quantidade e calcular
    if valor == 2:
        doritos += int(input("Quantos Doritos ?: "))
        total += doritos * 3.50 #Multiplicando a quantidade pelo preço

    #Se for 3, socilitar quantidade e calcular
    if valor == 3:
        cocaCola += int(input("Quantas Coca-Cola ?: "))
        total += cocaCola * 8.50 #Multiplicando a quantidade pelo preço
    
    #Se for 4, socilitar quantidade e calcular
    if valor == 4:
        todynho += int(input("Quantos Toddynho ?: "))
        total += todynho * 3.00 #Multiplicando a quantidade pelo preço

#Mostrando a lista de compras
print("Sua lista de compras: ")
if trakinas > 0:
    print("Você comprou %i Trakinas"%(trakinas))

if doritos > 0:
    print("Você comprou %i Doritos"%(doritos))

if cocaCola > 0:
    print("Você comprou %i Coca-Cola"%(cocaCola))

if todynho > 0:
    print("Você comprou %i Todynho"%(todynho))

# Monstando o total da compra
print("O Total da sua compra é de R$ %5.2f"% (total))
