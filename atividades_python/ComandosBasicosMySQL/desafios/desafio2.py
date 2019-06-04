#  Exemplo 1 - como conectar com o banco de dados
import MySQLdb

host = "localhost"
user = "PythonProjects"
password = "123456"
db = "bd_escola"
port = 3306

con = MySQLdb.connect(host, user, password, db, port)


def select(campos, tabelas, where=None, like=None):  #  Definindo a funcão, o parametro whwre é opcional
    cur = con.cursor()
    query = ("SELECT " + campos + " FROM " + tabelas)  #  Cria a query
    if where:
        query = (query + " where " + where)
    elif like:
        query = (query + " where nome %" + where)
    cur.execute(query)
    return cur.fetchall()  #  retorna o registro

buscaAluno = select("idaluno, nome, email", "aluno", "nome LIKE '%Paulo%'")
for registro in buscaAluno:
        print(registro)