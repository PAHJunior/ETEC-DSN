# Arquivo principal do programa.
from circulo import Circulo  # Do arquivo circulo importe a classe Circulo
from retangulo import Retangulo  # Do arq retangulo importa a classe Ret
from triangulo import Triangulo
from trapezio import Trapezio
from losangulo import Losangulo
from hexagono import Hexagono
from octotagono import Octotagono



print("Escolha qual forma deseja utilizar nos calculos!")
forma = int(input("\n 1-Circulo \n 2-Retangulo \n 3-Triangulo \n 4-Trapezio \n 5-Losangulo \n 6-Hexagono \n 7-Octagono \n"))
if forma == 1:  # Se foi escolhido a forma 1 (Circulo)
    raio = float(input("Quantos centimetros tem o raio: "))  # Entrada de dados
    meuCirculo = Circulo(raio)  # Na variavel meuCirculo cria um novo
    # objeto do tipo Circulo, passando raio como parâmetro
    meuCirculo.calc_area()  # Chama o método calc_area
    print("A área do circulo é %5.2fcm²!" % meuCirculo.area)
    meuCirculo.calc_perimetro()  # Chama o método calc_perimetro
    print("O perímetro do circulo é %5.2fcm!" % meuCirculo.perimetro)

elif forma == 2:
    altura = int(input("Digite a medida da altura do retangulo: "))  # Entrada de dados
    largura = int(input("Digite a medida da largura do retangulo: "))
    meuRetangulo = Retangulo(altura, largura)  # Na variavel meuretangulo cria um novo
    # objeto do tipo Retangulo, passando ladoMaior e ladoMenor como parâmetros
    meuRetangulo.calc_area()  # Chama o método calc_area
    print("A área do retangulo é %5.2fcm²!" % meuRetangulo.area())
    meuRetangulo.calc_perimetro()  # Chama o método calc_perimetro
    print("O perímetro do retangulo é %5.2fcm!" % meuRetangulo.perimetro)

elif forma == 3:
    base = int(input("Digite a base de um triangulo: "))
    baseAltura = int(input("Digite a altura do triangulo: "))
    lado1 = int(input("Digite o 1º lado do triangulo: "))
    lado2 = int(input("Digite o 2º lado do triangulo: "))
    lado3 = int(input("Digite o 3º lado do triangulo: "))
    meuTriangulo = Triangulo(base, baseAltura, lado1, lado2, lado3)
    meuTriangulo.calcArea()
    print("A area do triangulo é %5.2f cm²"% meuTriangulo.area)
    meuTriangulo.calcPerimetro()
    print("O perimetro do triangulo é de %5.2f cm²"% meuTriangulo.perimetro)

elif forma == 4:
    base1 = int(input("Digite a base maior: "))
    base2 = int(input("Digite a base menor: "))
    lado1 = int(input("Digite o lado 1: "))
    lado2 = int(input("Digite o lado 2: "))
    altura = int(input("Digite a altura: "))
    meuTrapezio = Trapezio()
    meuTrapezio.calcArea(base1, base2, altura)
    print("A area do trapezio é de %5.2fcm²"% meuTrapezio.area)
    meuTrapezio.calcPerimetro(base1, base2, lado1, lado2)
    print("O perimetro do trapezio é de %5.2fcm²" % meuTrapezio.perimetro)

elif forma == 5:
    dMaior = int(input("Digite o losangulo maior"))
    dMenor = int(input("Digite o losangulo menor"))

    meuLosangulo = Losangulo()
    meuLosangulo.calcArea(dMaior, dMenor)
    meuLosangulo.calcPerimetro(dMaior, dMenor)
    print("A area do losangulo é de %5.2fcm²" % meuLosangulo.area)
    print("O perimetro do losangulo é de %5.2fcm² "% meuLosangulo.perimetro)


elif forma == 6:
    lado1 = int(input("Digite o lado1: "))
    lado2 = int(input("Digite o lado2: "))
    lado3 = int(input("Digite o lado3: "))
    lado4 = int(input("Digite o lado4: "))
    lado5 = int(input("Digite o lado5: "))
    lado6 = int(input("Digite o lado6: "))
    apotema = int(input("Digite a apotema: "))

    meuHexagono = Hexagono()
    meuHexagono.calcArea(lado1, lado2, lado3,lado4,lado5,lado6, apotema)
    meuHexagono.calcPerimetro(lado1, lado2, lado3,lado4,lado5,lado6)
    print("A area do hexago é de %5.2fcm²" %meuHexagono.area)
    print("O perimetro do hexagono é de %5.2fcm² "% meuHexagono.perimetro)

elif forma == 7:
    lado1 = int(input("Digite o lado1: "))
    lado2 = int(input("Digite o lado2: "))
    lado3 = int(input("Digite o lado3: "))
    lado4 = int(input("Digite o lado4: "))
    lado5 = int(input("Digite o lado5: "))
    lado6 = int(input("Digite o lado6: "))
    lado7 = int(input("Digte o lado7: "))
    lado8 = int(input("Digte o lado8: "))
    apotema = int(input("Digite a apotema: "))

    meuOctagono = Octotagono()
    meuOctagono.calcArea(lado1, lado2, lado3,lado4,lado5,lado6,lado7,lado8, apotema)
    meuOctagono.calcPerimetro(lado1, lado2, lado3,lado4,lado5,lado6, lado7, lado8)
    print("A area do hexago é de %5.2fcm²" %meuOctagono.area)
    print("O perimetro do hexagono é de %5.2fcm² "% meuOctagono.perimetro)

else:
    print("Opição inválida...")
