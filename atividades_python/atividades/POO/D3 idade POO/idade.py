class Idade:
    def __init__(self):
        self.resultado = 0


    def idade(self, dia, mes, ano, anoAtual):
        meses = mes * 31
        # meses com 31
        # if mes == 1 or mes == 3 or mes == 5 or mes == 7 or mes == 8 or mes == 10 or mes == 12:
        #     meses = mes * 31

        anos = (anoAtual - ano) * 365
        totalAnos = anos + ((anoAtual - ano) / 4)
        resultado = dia + meses + totalAnos
        print('Voce tem aproximadamente %5.0f dias nesse mundão'% resultado)
