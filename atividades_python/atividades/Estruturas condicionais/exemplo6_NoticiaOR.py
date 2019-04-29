#Exemplo 6 Utilizando OR


print("Voce quer uma Noticia boa ou ruim")

#Recebemdp a resposta
verifica = (input("Digite B para noticia boa ou R para a ruim: "))

#Se for B maiusculo ou minusculo exibir hoje e sexta
if verifica == "B" or verifica == "b":
    print("Hoje é sexta-feira :D")

#Se for A maiusculo ou minusculo exibir voce tem lição...
elif verifica == "A" or verifica == "a":
    print("Você tem lição de casa e trabalhos pra fazer :(")

else:
    print("Digite apenas B ou R")
