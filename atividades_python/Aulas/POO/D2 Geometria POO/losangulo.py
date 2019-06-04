class Losangulo:
    def __init__(self):
        self.area = 0
        self.perimetro = 0

    def calcArea(self, diagonalMaior, diagonalMenor):
        self.area = (diagonalMaior + diagonalMaior) / 2


    def calcPerimetro(self, diagonalMaior, diagonalMenor):
        self.perimetro = diagonalMaior + diagonalMenor
