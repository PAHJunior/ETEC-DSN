from tkinter import *


def bt_click():
    print(ed.get())
    lb["text"] = ed.get()
    janela.configure(background='blue')



janela = Tk()

ed = Entry(janela, width=20)
ed.place(x=100, y=100)


bt = Button(janela, width=20, text="Botao 1", command=bt_click)
bt.place(x=100, y=130)
lb = Label(janela, text="")
lb.place(x=100, y=160)


janela.geometry("300x300+200+200")
janela.title("Configurando a tela")
janela.mainloop()