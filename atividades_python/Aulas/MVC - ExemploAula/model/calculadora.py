class Calculadora:
    def __init__(self, num1, num2):
        self.operador1 = num1
        self.operador2 = num2

    def somar(self):
        resultado = self.operador1 + self.operador2
        return resultado

    def subtrair(self):
        resultado = self.operador1 - self.operador2
        return resultado

    def multiplicar(self):
        resultado = self.operador1 * self.operador2
        return resultado

    def dividir(self):
        if self.operador2 == 0:
            return "errDiv"
        else:
            resultado = self.operador1 / self.operador2
            return resultado