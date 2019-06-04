# exemplo media do aluno

#Recebendo a primeira nota
n1 = float(input("Digite a primeira nota do aluno"))

#Recebendo a segunda nota
n2 = float(input("Digite a segunda nota do aluno"))

#Calculando a media do aluno
media = (n1+n2)/2

#Se for maior ou igual a 7
if media >= 7:
    print("Aluno aprovdo com a media de %f"% media)

#Se for menor que 5
elif media > 5:
    print("Aluno recuperação com a media de%f"% media )

#Se nao for nenhuma das condições a cima
else:
    print("Aluno reprovado com a media de %f"% media)
