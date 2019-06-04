from conectaBanco import ConectaBanco

banco = ConectaBanco()  #  Importa a classe

tabela = "aluno"
'''campos = "idaluno, nome, dtnasc, endereco, cidade, estado, email"
valores = "default, 'Rebecao', '1999/11/09', 'Aldeinha 2', 'Itapecerica da Serra', 'SP', 'rebecao@gmail.com'"

banco.insert(tabela, valores, campos)'''

'''
updateset = "nome =  'Vitória Mendes'"
updatewhere = "idaluno = 2"
banco.update(tabela, updateset, updatewhere)
'''

banco.delete(tabela, "idaluno = 4")

regSelect = banco.select("*", "aluno")  #  Executa o select atribuido o resultado na variavel redSelect

for registro in regSelect:
    print(registro)  #  Imprime os registros

