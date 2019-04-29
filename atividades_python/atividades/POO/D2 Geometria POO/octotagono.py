class Octotagono:
    def __init__(self):
        self.area = 0
        self.perimetro = 0


    def calcArea(self, lado1,lado2,lado3,lado4,lado5,lado6, lado7, lado8, altura):
        self.area = (lado1 + lado2 +lado3 + lado4 + lado5 + lado6) * altura/ 2

    def calcPerimetro(self, lado1,lado2,lado3,lado4,lado5,lado6, lado7, lado8):
        self.perimetro = lado1 + lado2 +lado3 + lado4 + lado5 + lado6 + lado7 +lado8

