# a funcao media recebe varios valores como parametro
# por causa do (* valores) e entao realiza a media
def media(* valores):
    soma = 0
    qtd = 0
    for num in valores:
        soma += num
        qtd += 1
    return  soma / qtd


#  Programa principal
#  Chamando a função e passando os parametros
print('Media %5.2f: ' % media(10,8))
print('Media %5.2f: ' % media(10,8.4,5,6,7))
