class Secretaria:
    def __init__(self):
        self.user = ""

    # query de autentificação
    def autentificar(self, login, senha):
        campos = " * "
        tabela = " tbl_secretaria "
        where = " login = " + login + " and senha = "+ senha
        self.user = self.bd.select(campos, tabela, where)
        print("User is" + self.user)
        return self.user