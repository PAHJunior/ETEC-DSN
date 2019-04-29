valorPorHora = float(input('Quanto voce ganha por hora: '))
horasTrabalhadas = float(input('Quantas horas voce trabalhou no mes: '))

salarioBruto = valorPorHora * horasTrabalhadas #  Descobrindo o salario bruto mensal
impostoRenda = salarioBruto * 0.11 #  Desconto do imposto
inss = salarioBruto * 0.08 #  Desconto do INSS
sindicato = salarioBruto * 0.05 #  Desconto do sindicato
salarioLiquido = salarioBruto - impostoRenda - inss - sindicato #  Salario Liquido

print('Salario Bruto:', salarioBruto)
print('Imposto de Renda:', impostoRenda)
print('INSS:', inss)
print('Sindicato:', sindicato)
print('Salario Liquido:', salarioLiquido)