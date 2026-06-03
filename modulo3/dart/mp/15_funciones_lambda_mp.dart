void main() {
  final duplicarGoles = (int g) => g * 2;
  print(duplicarGoles(3));

  final calcularMinutosRestantes = (double tiempoTotal, double minutosJugados) {
    final adicion = 5.0;
    return (tiempoTotal + adicion) - minutosJugados;
  };
  print(calcularMinutosRestantes(90.0, 75.0));

  final dorsales = [3, 1, 4, 1, 5, 9, 2, 6];
  dorsales.sort((a, b) => b.compareTo(a));
  print(dorsales);
}