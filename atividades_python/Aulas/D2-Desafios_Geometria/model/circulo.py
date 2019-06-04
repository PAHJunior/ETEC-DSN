class Circulo:
    def __init__(self, raio):
        self.raio = raio

    def calc_area(self):  # Definição do método calc_Area
        resultado = 3.1416 * (self.raio ** 2)
        return resultado

    def calc_perimetro(self):  # Definição do método calc_Perimetro
        resultado = 2 * 3.1416 * self.raio
        return resultado
