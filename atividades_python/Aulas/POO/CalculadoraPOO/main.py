from calculadora import MinhaCalculadora

numero1 = float(input("Digite o primeiro numero: "))
numero2 = float(input("Digite o segundo  numero: "))

calc = MinhaCalculadora(numero1, numero2)
op = input("Digite o sinal da operação: ")

if op == "+":
    calc.somar()
elif op == "-":
    calc.subtrair()
elif op == "*":
    calc.multiplicar()
elif op == "/":
    calc.divisao()
else:
    print("Opção invalida")

if op == "+" or op == "-" or op == "*" or op == "/":
    result = calc.resultado
    print(" O resultado é %5.2f"% calc.resultado)
