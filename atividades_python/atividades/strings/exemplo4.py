# Exemplo 4 - Pesquisa Find e RFind

S = "Alo Mundo" #Crinado a string
print(S.find("Mundo")) #procura na string a posição da letra "Mun" , retornou o indice do primeiro caractere encontrado, nesse caso 4
print(S.find("OK")) #procura na string a posição da letra "OK" , retorna -1 pois n achou nada
print(S.rfind("o")) #procura na string a posição da letra "o" , retorna 8, pois é RFind

print("="*190)

t = "Um dia de sol"
print(t.find("d")) #Pesquisa d na esquerda para direta, portanto retorna 3
print(t.rfind("d")) #Pesquisa d na direta para esquerda, portanto retorna 7
