from model.database import ConectaBanco
from model.secretaria import Secretaria
from view.tela_login import Tela_Login

class ControleSecretaria:
    def __init__(self):
        #  Possição 0 = login
        #  Posição 1 = senha
        self.usuario = []
        #  Tela de login
        self.tela = Tela_Login()
        # Conecta com o banco
        self.bd = ConectaBanco()

    def tela_login(self):
        self.tela.start()

    def lerLogin(self):
        self.usuario = self.tela.getLogin()
        where = "login = '" + self.usuario[0] + "' and senha = '"+ self.usuario[1] + "';"
        resultado = self.bd.select("*","tbl_secretaria", where)
        msg = "Olá " + resultado[0][2]
        self.tela._close()
        self.tela.aviso(msg)


