from tkinter import *


janela = Tk()

lb = Label(janela,text="Ola mundo!!")
lb.place(x=100, y=100)
lb.configure(background='blue')

janela.geometry("800x600+100+50")
janela.title("Configurando a tela")
janela.configure(background='blue')

janela.mainloop()