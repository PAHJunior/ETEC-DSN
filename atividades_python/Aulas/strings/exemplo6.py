# Exemplo 6 - Split Join


nomeCompleto = "Pedro Hnerique Oliveira Mendes" #Cria a string
ListaNomeSeparado = nomeCompleto.split(" ") #Quebra a String
# separando com base no espaço, criando os elementos da lista
print(ListaNomeSeparado[0]) # imprime o 1° elemento d lista
print(ListaNomeSeparado[1]) # imprime o 2° elemento d lista
print(ListaNomeSeparado[2]) # imprime o 3° elemento d lista
print(ListaNomeSeparado[3]) # imprime o 4° elemento d lista

ListaNomeAbreviado = (ListaNomeSeparado[0], ListaNomeSeparado[-1])

print(ListaNomeAbreviado)

ListaNomeAbreviado = " ".join(ListaNomeAbreviado)
print(ListaNomeAbreviado)

