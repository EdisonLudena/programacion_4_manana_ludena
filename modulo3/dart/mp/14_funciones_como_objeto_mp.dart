int duplicarGoles(int n)  => n * 2;
int triplicarGoles(int n) => n * 3;

void main() {
  int Function(int) calcularMetrica;

  calcularMetrica = duplicarGoles;
  print(calcularMetrica(5));

  calcularMetrica = triplicarGoles;
  print(calcularMetrica(5));

  final calculosRendimiento = <int Function(int)>[duplicarGoles, triplicarGoles];
  for (final fn in calculosRendimiento) {
    print(fn(10));
  }
}
