abstract class PersonalClub {
  String get nombre;
  double calcularSueldo();
  double calcularBonificacion();

  void describir() {
    print('$nombre — sueldo: ${calcularSueldo().toStringAsFixed(2)}, '
          'bonificación: ${calcularBonificacion().toStringAsFixed(2)}');
  }
}

class JugadorContratado extends PersonalClub {
  final double rendimiento;
  JugadorContratado(this.rendimiento);

  @override String get nombre => 'Jugador (rendimiento=$rendimiento)';
  @override double calcularSueldo()      => 3.1416 * rendimiento * rendimiento;
  @override double calcularBonificacion() => 2 * 3.1416 * rendimiento;
}

class Entrenador extends PersonalClub {
  final double experiencia, titulos;
  Entrenador(this.experiencia, this.titulos);

  @override String get nombre => 'Entrenador (${experiencia}x$titulos)';
  @override double calcularSueldo()      => experiencia * titulos;
  @override double calcularBonificacion() => 2 * (experiencia + titulos);
}

void main() {
  final miembros = <PersonalClub>[JugadorContratado(5), Entrenador(4, 7)];
  for (final f in miembros) {
    f.describir();
  }
}
