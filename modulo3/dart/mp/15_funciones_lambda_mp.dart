void main() {
  final proyeccionGoles = (int n) => n * n;
  print(proyeccionGoles(7));

  final calcularSalarioNeto = (double salarioBruto, double porcentajeImpuesto) {
    final retencion = salarioBruto * (porcentajeImpuesto / 100);
    return salarioBruto - retencion;
  };
  print(calcularSalarioNeto(100.0, 15.0));

  final dorsales = [3, 1, 4, 1, 5, 9, 2, 6];
  dorsales.sort((a, b) => b.compareTo(a));
  print(dorsales);
}
