from controller.controllerGeometria import ControllerCirculo
from view.visaoGeometria import VisaoGeometria


telaCirculo = VisaoGeometria()
telaCirculo.start()

calc = ControllerCirculo()
calc.lerdados()
