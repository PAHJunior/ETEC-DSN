#Pegando a media
#Exemplo 4
nome = input("Digite o nome do aluno: ") #pegando o resultado digitado
qtd = int(input("Quantas notas são ?: ")) #pegando a quantidade de materias
x = 0
total = 0

while qtd > x: #Laço de repetição
    nota = float(input("Digite a nota da materia %i: " %(x))) #Nota recebe o valor da nota
    total = total + nota #pega a variavel total e soma toma+ a nota que foi digitada
    x += 1 # i++
media =  total / qtd #realizando a media

#estrutura if para verificar se ele foi aprovado ou reprovado
if media >= 7:
    status = "aprovado"
else:
    status = "reprovado"

#printando o resultado
print("O Aluno %s tem media %5.2f logo ele(a) está %s"%(nome, media, status))
