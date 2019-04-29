#desafio 1

palavra = input("Digite uma palvra: ")
qtd = 0

for letras in palavra:
    qtd += 1

print("A palavra %s tem %i letras"% (palavra, qtd))
