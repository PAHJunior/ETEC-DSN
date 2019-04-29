#Exemplo 2 - converter Maiuscula em Minuscula

S = "O rato roeu a roupa do rei de roma" #Cria uma string
S = S.lower() #Converte os caracteres da String para minusculos e a sobescrever
print(S) #Imprimir a string

S = S.upper() #Converte os caracteres da string para maiu
print(S) # Imprime a String

S = S.title() # Converte cad primeira em maiusculo
print(S) #Imprimir a string

S = S.capitalize() # Converte só a primeira letra em maiusculo
print(S) #Imprime a String

S = "SIM" #Atribui SIM a S
print(S == "sim")
print(S == "sim".upper()) # Retorna um boolean , ira retorna um false porque o SIM é em maisculo
