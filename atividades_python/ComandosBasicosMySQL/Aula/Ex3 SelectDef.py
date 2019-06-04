#  Exemplo 1 - como conectar com o banco de dados
import MySQLdb  #  Importando o MySQLdb

host = "localhost"
user = "PythonProjects"
password = "123456"
db = "bd_escola"
port = 3306
con = MySQLdb.connect(host, user, password, db, port)

def select(campos, tabelas, where=None):  #  Definindo a funcão, o parametro whwre é opcional
    cur = con.cursor()
    query = ("SELECT " + campos +" FROM "+ tabelas)  #  Cria a query
    if where:
        query = (query + " where " + where)
    cur.execute(query)
    return cur.fetchall()  #  retorna o registro


regSelect = select("*", "aluno", "idaluno = 1")
for registro in regSelect:
        print(registro)  #  Imprime o registro que foi retornado na def select