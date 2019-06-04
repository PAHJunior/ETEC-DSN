class VisaoCalculadora:

    def start(self):
        print("Bem vindo a minha calculadora MVC !!!")

    def getnum1(self):
        numero1 = float(input("Digite o primeiro numero"))
        return numero1

    def getnum2(self):
        numero2 = float(input("Digite o segundo numero"))
        return numero2

    def getoper(self):
        print("1 - Soma \n 2 - Subtração \n 3 - Multiplicação \n 4 - Divisão \n")
        op = input("Digite a operação desejada")
        return op

    def exibeerroOp(self):
        print("Oção invalida")

    def exbibeerroDiv(self):
        print("Não existe divisão por zero")

    def exiberesult(self, resultado):
        print("O resultado é %5.2f" % resultado)
