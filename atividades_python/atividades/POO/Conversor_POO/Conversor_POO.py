class Conversor:
    def __init__(self, frase):
        self.resultado = 0
        self.frase = frase

    def maiuscula(self):
        self.resultado = self.frase.upper()

    def minuscula(self):
        self.resultado = self.frase.lower()

    def capitular(self):
        self.resultado = self.frase.capitalize()

    def title(self):
        self.resultado = self.frase.title()
