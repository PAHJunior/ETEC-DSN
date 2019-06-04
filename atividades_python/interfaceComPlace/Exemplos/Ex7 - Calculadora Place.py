from tkinter import *
from calculadora import MinhaCalculadora
from functools import partial



def validar(op):
    if edNum1.get().isnumeric() and edNum2.get().isnumeric():
        num1 = float(edNum1.get())
        num2 = float(edNum2.get())
        calculadora = MinhaCalculadora(num1,num2)
        if op == "Somar":
            resultado = calculadora.somar()
        elif op == "Sub":
            resultado = calculadora.subtrair()
        elif op == "Mult":
            resultado = calculadora.multiplicar()
        else:
            resultado = calculadora.dividir()
        lb["text"] = "Resultado: " + str(resultado)

    else:
        lb["text"] = "Digite apenas numeros!!!"


janela = Tk()

lbNum1 = Label(janela, text="Valor 1:")
edNum1 = Entry(janela, width=20)
lbNum2 = Label(janela, text="Valor 2:")
edNum2 = Entry(janela, width=20)

btSoma = Button(janela, width=3, text="+")
btSoma["command"] = partial(validar, "Soma")

btSub = Button(janela, width=3, text="-")
btSub["command"] = partial(validar, "Sub")

btMult = Button(janela, width=3, text="*")
btMult["command"] = partial(validar, "Mult")

btDiv = Button(janela, width=3, text="/")
btDiv["command"] = partial(validar, "Div")
lb = Label(janela, width=3, text="Resultado")

lb.place(x=100, y=160)
edNum1.place(x=150, y=70)
lbNum1.place(x=100, y=100)
edNum2.place(x=150, y=100)

btSoma.place(x=100, y=130)
btSub.place(x=140, y=130)
btMult.place(x=180, y=130)
btDiv.place(x=220, y=130)

lbNum1.place(x=100, y=70)

janela.geometry("360x250+200+200")
janela.title("Calculadora")
janela.mainloop()