class Circulo:  # Define o nome da classe
    # __init__() é o método inicializador da classe recebendo
    # um parâmetro: raio
    def __init__(self, raio):
        self.raio = raio  # self faz referencia ao proprio obj
        self.area = 0  # entãos estamos definindo os atributos
        self.perimetro = 0  # do proprio obj instanciado

    def calc_area(self):  # Definição do método calc_Area
        self.area = 3.1416 * (self.raio ** 2)

    def calc_perimetro(self):  # Definição do método calc_Perimetro
        self.perimetro = 2 * 3.1416 * self.raio
