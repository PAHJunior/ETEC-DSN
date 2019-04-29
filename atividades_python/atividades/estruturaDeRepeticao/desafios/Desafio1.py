#crie um programa que receba uma variavel e mostre uma a tabuada

numero = int(input("Digite um numero: "))
tabuada = [0,1,2,3,4,5,6,7,8,9,10]

for resultado in tabuada:
    print("%i x %i = %i"% (resultado, numero, resultado*numero))
