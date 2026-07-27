class PresupuestoEquipo {
  final String nombreEquipo;
  double _presupuesto;

  PresupuestoEquipo(this.nombreEquipo, double presupuestoInicial)
      : _presupuesto = presupuestoInicial;

  double get presupuesto => _presupuesto;

  void recibirIngreso(double monto) {
    if (monto <= 0) throw ArgumentError('El monto debe ser positivo');
    _presupuesto += monto;
    print('Ingreso de \$$monto M. Nuevo presupuesto: \$$_presupuesto M');
  }

  void gastarEnFichaje(double monto) {
    if (monto <= 0)      throw ArgumentError('El monto debe ser positivo');
    if (monto > _presupuesto)  throw StateError('Presupuesto insuficiente');
    _presupuesto -= monto;
    print('Gasto de \$$monto M. Nuevo presupuesto: \$$_presupuesto M');
  }
}

void main() {
  final cuenta = PresupuestoEquipo('Real Madrid', 500.0);

  cuenta.recibirIngreso(200.0);
  cuenta.gastarEnFichaje(150.0);
  print(cuenta.presupuesto);

}
