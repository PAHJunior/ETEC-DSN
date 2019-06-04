#  Exemplo 1 - como conectar com o banco de dados
import MySQLdb  #  Importando o MySQLdb

host = "localhost"
user = "PythonProjects"
password = "123456"
db = "bd_escola"
port = 3306

con = MySQLdb.connect(host, user, password, db, port)

cur = con.cursor()  #  Cria uma variavel do tipo cursor que permite executar
#  nossas querys SQL
cur.execute("SELECT * FROM aluno")  #  Execute um Select atraves do cur
#  fetchall vai gerar uma tupla para cada registro
#  encontrando armazenamento em uma outra tupla
for registro in cur.fetchall():
    print(registro)
