#  Exemplo 1 - como conectar com o banco de dados
import MySQLdb

host = "localhost"
user = "PythonProjects"
password = "123456"
db = "bd_escola"
port = 3306

con = MySQLdb.connect(host, user, password, db, port)


def select(campos, tabelas,idAluno=None, email=None):  #  Definindo a funcão, o parametro whwre é opcional
    cur = con.cursor()
    query = ("SELECT " + campos + " FROM " + tabelas)  #  Cria a query
    if idAluno:
        query = (query + " where idaluno = " + idAluno)
    elif email:
        query = (query + " where email = " + email)
    else:
        query
    cur.execute(query)
    return cur.fetchall()  #  retorna o registro

buscaAluno = select("idaluno, nome, email", "aluno", "2")
for registro in buscaAluno:
        print(registro)