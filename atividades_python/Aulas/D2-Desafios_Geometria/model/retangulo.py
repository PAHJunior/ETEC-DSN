class Retangulo:
    def __init__(self, lado1, lado2):
        self.lado1 = lado1
        self.lado2 = lado2

    def calc_area(self):  # Definição do método calc_Area
        resultado = (self.lado1 + self.lado2)
        return resultado

    def calc_perimetro(self):  # Definição do método calc_Perimetro
        resultado = self.lado1 * self.lado2
        return resultado
