from conectaBanco import ConectaBanco

banco = ConectaBanco()  #  Importa a classe

tabela = "aluno"



banco.delete(tabela, "idaluno = 4")

regSelect = banco.select("*", "aluno")  #  Executa o select atribuido o resultado na variavel redSelect

for registro in regSelect:
    print(registro)  #  Imprime os registros

