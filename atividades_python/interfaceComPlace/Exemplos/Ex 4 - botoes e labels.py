from tkinter import *


def bt_click():
    print("Clicou")
    lb["text"] = "Funfo"


janela = Tk()

bt = Button(janela, width=20, text="OK", command=bt_click)
bt.place(x=100, y=100)

lb = Label(janela, text="Teste")
lb.place(x=100, y=150)

janela.geometry("300x300+200+200")
janela.title("Configurando a tela")
janela.mainloop()