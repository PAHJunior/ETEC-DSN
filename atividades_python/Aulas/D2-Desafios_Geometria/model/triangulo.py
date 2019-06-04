class Triangulo:
    def __init__(self, lado1, lado2, base, altura):
        self.lado1 = lado1
        self.lado2 = lado2
        self.base = base
        self.altura = altura

    def calcArea(self):
        area = self.base * self.altura * 2
        return area

    def calcPerimetro(self):
        perimetro = self.lado1 + self.lado2 + self.base
        return perimetro