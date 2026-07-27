abstract class RolDeportivo {
  String get nombre;
  double calcularPresupuestoAnual();
}

class JugadorEstrella extends RolDeportivo {
  final double salarioBase;
  JugadorEstrella(this.salarioBase);
  @override String get nombre => 'Estrella';
  @override double calcularPresupuestoAnual() => salarioBase * salarioBase;
}

class CuerpoTecnico extends RolDeportivo {
  final double salarioEntrenador, bonoDesempeno;
  CuerpoTecnico(this.salarioEntrenador, this.bonoDesempeno);
  @override String get nombre => 'Cuerpo Técnico';
  @override double calcularPresupuestoAnual() => (salarioEntrenador * bonoDesempeno) / 2;
}

class FichajePromesa extends RolDeportivo {
  final double costoFichaje;
  FichajePromesa(this.costoFichaje);
  @override String get nombre => 'Promesa';
  @override double calcularPresupuestoAnual() => 3.1416 * costoFichaje * costoFichaje;
}

void imprimirPresupuesto(RolDeportivo rol) {
  print('${rol.nombre}: ${rol.calcularPresupuestoAnual().toStringAsFixed(2)} USD');
}

void main() {
  final roles = <RolDeportivo>[
    JugadorEstrella(4),
    CuerpoTecnico(6, 3),
    FichajePromesa(5),
  ];

  for (final r in roles) {
    imprimirPresupuesto(r);
  }

  final mayor = roles.reduce((a, b) => a.calcularPresupuestoAnual() > b.calcularPresupuestoAnual() ? a : b);
  print('\nRol con mayor presupuesto: ${mayor.nombre}');
}
