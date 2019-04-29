#Pegando a media
#Exemplo 4
nome = input("Digite o nome do aluno: ") #pegando o resultado digitado
x = 0
total = 0

while True: #Laço de repetição
    nota = input("Digite a nota da materia %i: ou digite FIM pra sair " %(x)) #Nota recebe o valor da nota
    if nota.upper() == "FIM":
        break
    total = total + float(nota) #pega a variavel total e soma toma+ a nota que foi digitada
    x += 1 # i++

media = total / x #realizando a media

#estrutura if para verificar se ele foi aprovado ou reprovado
if media >= 7:
    status = "aprovado"
else:
    status = "reprovado"

#printando o resultado
print("O Aluno %s tem media %5.2f logo ele(a) está %s"%(nome, media, status))
