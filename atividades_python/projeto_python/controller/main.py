from view.tela_login import Tela_Login
from controller.controleSecretaria import ControleSecretaria

from model.database import ConectaBanco


controller = ControleSecretaria()
controller.tela_login()
controller.lerLogin()