class VisaoGeometria:

    def start(self):
        print("DESAFIO 2 - GEOMETRIA")

    def getOp(self):
        op = input("1 - Circulo \n2 - Retangulo\n3 - Triangulo")
        return op

    def getRaio(self):
        raio = float(input("Digite o raio do circulo"))
        return raio

    def getLado1(self):
        lado1 = float(input("Digite o lado 1 do triangulo"))
        return lado1

    def getLado2(self):
        lado2 = float(input("Digite o lado 2 do triangulo"))
        return lado2

    def getBase(self):
        base = float(input("Digite a base do triangulo"))
        return base

    def getAltura(self):
        altura = float(input("Digite a altura do triangulo"))
        return altura



    # Exibindo resultados
    def exibirPerimetro(self, perimetro):
        print("O perimetro é de %5.2f" % perimetro)

    def exibirArea(self, area):
        print("A area do de %5.2f " % area)