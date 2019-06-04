#  CRIANDO A CLASS
class MinhaCalculadora:

    #  PARAMETRAS QUE O USUARIO IRÁ DIGITAR
    def __init__(self, operando1, operando2):
        self.resultado = 0
        self.operador1 = operando1
        self.operador2 = operando2


    #  METODO PARA SOMAR
    def somar(self):
        self.resultado = self.operador1 + self.operador2


    #  METODO PARA SUBTRAIR
    def subtrair(self):
        self.resultado = self.operador1 - self.operador2


    #  METODO PARA MULTIPLICAR
    def multiplicar(self):
        self.resultado = self.operador1 * self.operador2


    #  METODO PARA DIVIDIR
    def divisao(self):
        self.resultado = self.operador1 / self.operador2
