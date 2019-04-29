class Triangulo:
    def __init__(self, base, baseAltura, lado1, lado2, lado3):
        self.lado1 = lado1
        self.lado2 = lado2
        self.base = base
        self.lado3 = lado3
        self.perimetro = 0
        self.area = 0
        self.baseAltura = baseAltura


    def calcArea(self):
        self.area = self.base * self.baseAltura * 2

    def calcPerimetro(self):
        self.perimetro = self.lado1 + self.lado2 + self.lado3



