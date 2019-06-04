from controller.controllerCirculo import ControllerCirculo
from view.visaoCirculo import VisaoCirculo



telaCirculo = VisaoCirculo()
telaCirculo.start()

calcCirculo = ControllerCirculo()
calcCirculo.lerdados()
calcCirculo.calcular()
