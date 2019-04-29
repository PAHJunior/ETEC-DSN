class Retangulo:  # Define o nome da classe
    # __init__() é o método inicializador da classe recebendo
    # dois parâmetros: lado1 e lado2
    def __init__(self, lado1, lado2):
        self.lado1 = lado1  # self faz referencia ao proprio obj
        self.lado2 = lado2  # entãos estamos definindo os atributos
        self.perimetro = 0  # do proprio obj instanciado
        self.area = 0

    def calc_area(self):  # Definição do método calc_Area
        self.area = self.lado1 * self.lado2

    def calc_perimetro(self):  # Definição do método calc_Perimetro
        self.perimetro = 2 * (self.lado1 + self.lado2)
