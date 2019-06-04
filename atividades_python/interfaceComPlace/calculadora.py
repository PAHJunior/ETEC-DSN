class MinhaCalculadora:
    def __init__(self, num1, num2):
        self.operador1 = num1
        self.operador2 = num2


    def somar(self):
        return self.operador1 + self.operador2

    def subtrair(self):
        return self.operador1 - self.operador2

    def multiplicar(self):
        return self.operador1 * self.operador2

    def dividir(self):
        if self.operador2 == 0:
            return "Não existe divisão por zero"
        else:
            return self.operador1 / self.operador2