from view.visaoGeometria import VisaoGeometria
from model.circulo import Circulo
from model.retangulo import Retangulo
from model.triangulo import Triangulo

class ControllerCirculo:
    def __init__(self):
        self.raio = 0
        #  pegando o lado do retangulo e triangulo
        self.lado1 = 0
        #  pegando o lado do retangulo e triangulo
        self.lado2 = 0
        #  Base do triangulo
        self.base = 0
        #  Altura do tringulo
        self.altura = 0
        #  get Opção
        self.op = 0
        self.telaGeometria = VisaoGeometria()

    def calcularCirculo(self):
        calc = Circulo(self.raio)
        resultArea = calc.calc_area()
        resultPerimetro = calc.calc_perimetro()
        self.resultadoArea(resultArea)
        self.resultadoPerimetro(resultPerimetro)

    def calcularRetangulo(self):
        retangulo = Retangulo(self.lado1, self.lado2)
        area = retangulo.calc_area()
        perimetro = retangulo.calc_perimetro()
        self.resultadoArea(area)
        self.resultadoPerimetro(perimetro)

    #  Calculando triangulo
    def calcularTriangulo(self):
        triangulo = Triangulo(self.lado1, self.lado2, self.base, self.altura)
        area = triangulo.calcArea()
        perimetro = triangulo.calcPerimetro()
        self.resultadoArea(area)
        self.resultadoPerimetro(perimetro)

    def resultadoArea(self, resultArea):
        self.telaGeometria.exibirArea(resultArea)

    def resultadoPerimetro(self, resultPerimetro):
        self.telaGeometria.exibirPerimetro(resultPerimetro)

    #Lendo os dados e chamando as funções para cada operação
    def lerdados(self):
        self.op = self.telaGeometria.getOp()
        if self.op == "1":
            self.raio = self.telaGeometria.getRaio()
            self.calcularCirculo()
        elif self.op == "2":
            self.lado1 = self.telaGeometria.getLado1()
            self.lado1 = self.telaGeometria.getLado2()
            self.calcularRetangulo()
        elif self.op == "3":
            self.lado1 = self.telaGeometria.getLado1()
            self.lado2 = self.telaGeometria.getLado2()
            self.base = self.telaGeometria.getBase()
            self.altura = self.telaGeometria.getAltura()
            self.calcularTriangulo()