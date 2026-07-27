class ClubFutbol {
  final String nombreClub;
  double _presupuestoFichajes;

  ClubFutbol(this.nombreClub, double presupuestoInicial)
      : _presupuestoFichajes = presupuestoInicial;

  double get presupuestoFichajes => _presupuestoFichajes;

  void ingresarPresupuesto(double monto) {
    if (monto <= 0) throw ArgumentError('El monto debe ser positivo');
    _presupuestoFichajes += monto;
    print('Ingreso de \$$monto. Nuevo presupuesto: \$$_presupuestoFichajes');
  }

  void ficharJugador(double costo) {
    if (costo <= 0) throw ArgumentError('El monto debe ser positivo');
    if (costo > _presupuestoFichajes) throw StateError('Presupuesto insuficiente para el fichaje');
    _presupuestoFichajes -= costo;
    print('Fichaje realizado por \$$costo. Nuevo presupuesto: \$$_presupuestoFichajes');
  }
}

void main() {
  final club = ClubFutbol('Liga de Quito', 500000.0);

  club.ingresarPresupuesto(200000.0);
  club.ficharJugador(150000.0);
  print(club.presupuestoFichajes);
}