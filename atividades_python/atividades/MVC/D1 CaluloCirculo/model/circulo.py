class Circulo:
    def __init__(self, raio):
        self.raio = raio
        self.area = 0
        self.perimetro = 0

    def calc_area(self):  # Definição do método calc_Area
        self.area = 3.1416 * (self.raio ** 2)
        return self.area

    def calc_perimetro(self):  # Definição do método calc_Perimetro
        self.perimetro = 2 * 3.1416 * self.raio
        return self.perimetro