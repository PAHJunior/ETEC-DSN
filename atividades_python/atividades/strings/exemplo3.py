#Exemplo 3 - pesquisa in e not in

S = "Maria Amélia Souza" #Criando a string
print("Amélia" in S) # Verifica se Amélia está na string, nest caso retorna TRUE

print("Maria" in S) #Verifica se tem Maria está na String, nese caso retorna TRUE

print("Souza" in S) #Verifica se tem Souza na String, nesse caso retorna TRUE

print("a A" in S) # Verifica se A está em alguma parte da String, nesse caso retorna true

print("amélia" in S) #Verifica se tem amelia na strin. nesse caso retorna FALSE por estar em minusculo

S = "Todos caminhos levam a Roma"
print("levam" not in S) # Verifica se levam não está na string, neste caso False

print("Caminhos" not in S) # Verifica se Caminhos não está na string
#Neste caso True, pois Caminhos é deferentes de caminhos
