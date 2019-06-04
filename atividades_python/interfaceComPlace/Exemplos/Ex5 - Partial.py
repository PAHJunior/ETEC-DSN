from tkinter import *
from functools import partial


def bt_click(botao):
    print("Clicou")
    lb["text"] = "Funfo"


janela = Tk()

bt1 = Button(janela, width=20, text="Botao 1")
bt1["command"] = partial(bt_click, bt1)
bt1.place(x=100, y=100)

bt2 = Button(janela, width=20, text="Botao 2")
bt2["command"] = partial(bt_click, bt2)
bt2.place(x=100, y=130)
lb = Label(janela, text="Teste")
lb.place(x=100, y=160)


janela.geometry("300x300+200+200")
janela.title("Configurando a tela")
janela.mainloop()