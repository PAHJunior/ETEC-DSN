from tkinter import *

#  Caixa de msg
from tkinter import messagebox

#  Criar def com parametros
from functools import partial



class Tela_Login:
    def __init__(self):
        self.font = ('Tahoma', '15')
        self.user = []

    def logar(self, login, senha):
        self.user = [login, senha]

    def getLogin(self):
        return self.user

    def start(self):
        self.window = Tk()
        self.window.configure(pady=10)
        cnt = Frame(self.window, height=380, width=380)
        cnt.pack_propagate(0)  # Não encolher o container
        cnt.pack()

        # container login = cntLogin
        cntLogin = Frame(cnt, height=180, width=166, relief=SUNKEN)
        cntLogin.pack_propagate(0)  # Não encolher o container
        cntLogin.pack(expand=True)


        # Campo login
        lbLogin = Label(cntLogin,font=self.font, text="Login", anchor=W, fg="blue")
        txtLogin = Entry(cntLogin, width=26)


        # Campo Senha
        lbSenha = Label(cntLogin, font=self.font, text="Senha", anchor=W, fg="blue")
        txtSenha = Entry(cntLogin, width=26)


        # Botão
        # relief define a borda
        btn = Button(cntLogin,
                     width=22,
                     text="Login",
                     relief=GROOVE,
                     command=lambda: self.logar(txtLogin.get(), txtSenha.get() ))


        # Configurando a posição
        lbLogin.place(x= 0, y=10)
        txtLogin.place(x=0, y=40)
        lbSenha.place(x=0, y=70)
        txtSenha.place(x=0, y=100)
        btn.place(x=0, y=130)


        # Configuracao da tela
        self.window.geometry("400x400+500+150")  # Configurando o tamanho da tela
        self.window.title("Login")  # Titulo da tela
        self.window.resizable(0,0)  # Desabilita o botão de maximizar
        self.window.mainloop()

    def aviso(self, aviso):
        messagebox.showinfo("Aviso",aviso)

    def _close(self):
        self.window.quit()