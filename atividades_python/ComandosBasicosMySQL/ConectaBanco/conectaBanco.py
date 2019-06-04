import MySQLdb

class ConectaBanco:
    def __init__(self):
        self.con = "" # cria a variavel de conexão vazia

    def conecta(self):
        host = "localhost"
        user = "PythonProjects"
        password = "123456"
        db = "bd_escola"
        port = 3306
        self.con = MySQLdb.connect(host, user, password, db, port)  #  na variavel con cria nossa conexão

    def select(self, campos, tabelas, where=None):
        self.conecta()  #  chamando a conexao com o banco
        cur = self.con.cursor()  # Cri uma variavel do tipo cursor que permite executa query SQL
        query = ("SELECT "+ campos+ " FROM "+ tabelas)  #  query sem where
        if where:
            query = (query + " WHERE " + where)  #  Query do select se tiver o where
        cur.execute(query)  #  Executa o select atraves do cur
        result = cur.fetchall()  #  Gera uma tupla com os resultados enconttrados
        self.con.close()  #  Encerra a conexão com o banco
        return result

    def insert(self, tabela, valores, campos=None):
        self.conecta()
        cur = self.con.cursor()
        query = ("INSERT INTO " + tabela)
        if campos:
            query = (query + " (" + campos + ")")
        query = (query + " VALUES ("+ valores + ")")
        print(query)
        cur.execute(query)
        self.con.commit()
        self.con.close()

    def update(self, tabela, sets, where=None):
        self.conecta()
        cur = self.con.cursor()
        query = ("UPDATE " + tabela + " SET " + sets)
        if where:
            query = (query + " WHERE "+ where)

        print(query)
        cur.execute(query)
        self.con.commit()
        self.con.close()

    def delete(self, tabela, where):
        self.conecta()
        cur = self.con.cursor()
        query = ("DELETE FROM " + tabela + " where " + where)
        print(query)
        cur.execute(query)
        self.con.commit()
        self.con.close()