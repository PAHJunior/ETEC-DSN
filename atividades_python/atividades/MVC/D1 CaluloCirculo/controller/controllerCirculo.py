from view.visaoCirculo import VisaoCirculo
from model.circulo import Circulo

class ControllerCirculo:
    def __init__(self):
        self.raio = 0
        self.area = 0
        self.perimetro = 0
        self.telaCirculo = VisaoCirculo()

    def lerdados(self):
        self.raio = self.telaCirculo.getRaio()
        self.area = self.area.calc_area()
        self.perimetro = self.area.calc_perimetro()
