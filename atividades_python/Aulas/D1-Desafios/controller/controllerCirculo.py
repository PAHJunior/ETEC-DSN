from view.visaoCirculo import VisaoCirculo
from model.circulo import Circulo

class ControllerCirculo:
    def __init__(self):
        self.raio = 0
        self.telaCirculo = VisaoCirculo()

    def lerdados(self):
        self.raio = self.telaCirculo.getRaio()

    def calcular(self):
        calc = Circulo(self.raio)
        resultArea = calc.calc_area()
        resultPerimetro = calc.calc_perimetro()
        self.resultadoArea(resultArea)
        self.resultadoPerimetro(resultPerimetro)

    def resultadoArea(self, resultArea):
        self.telaCirculo.exibirArea(resultArea)

    def resultadoPerimetro(self, resultPerimetro):
        self.telaCirculo.exibirPerimetro(resultPerimetro)
