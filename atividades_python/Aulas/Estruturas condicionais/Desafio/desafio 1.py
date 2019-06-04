#Desafio 1

#recebendo n1 e n2
n1 = float(input("Digite o primeiro numero"))
n2 = float(input("Digite o primeiro numero"))


#Se n2 for maior que n1 faça....
if n2 > n1:
    print("N2 %5.2f é maior que N1 %5.2f "% (n2, n1))

#Se n1 e n2 forem do mesmo valor....
elif n1 == n2:
    print("N1 %5.2f e N2 %5.2f são o mesmo valor"% (n1, n2))

#Se não...
else:
    print("N1 %5.2f é maior que N2 %5.2f"% (n1, n2))
