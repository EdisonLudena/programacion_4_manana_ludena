int duplicarGoles(int g) => g * 2;
int triplicarGoles(int g) => g * 3;

void main() {
  int Function(int) calcularRendimiento;

  calcularRendimiento = duplicarGoles;
  print(calcularRendimiento(2));

  calcularRendimiento = triplicarGoles;
  print(calcularRendimiento(2));

  final proyeccionesGoles = <int Function(int)>[duplicarGoles, triplicarGoles];
  for (final fn in proyeccionesGoles) {
    print(fn(4));
  }
}