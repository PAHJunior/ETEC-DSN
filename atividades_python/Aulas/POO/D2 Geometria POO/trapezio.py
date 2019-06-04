class Trapezio:
    def __init__(self):
        self.area = 0
        self.perimetro = 0


    def calcArea(self, base1, base2, altura):
        self.area = (base1 + base2) * altura / 2


    def calcPerimetro(self, base1, base2, lado1, lado2):
        self.perimetro = base1 + base2 + lado1 + lado2
