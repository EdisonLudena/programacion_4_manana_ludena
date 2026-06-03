void main() {
  final recaudacionesTaquilla = [29.99, 49.50, 15.00, 99.99];

  // map devuelve un Iterable con cada elemento transformado
  final recaudacionConImpuesto = recaudacionesTaquilla.map((r) => r * 1.15);
  print(recaudacionConImpuesto.toList());

  // map sobre Strings
  final pathsEstrategia = ['/alineacion', '/estadisticas', '/suplentes'];
  final urlsAnalisis = pathsEstrategia.map((p) => 'https://api.clubfutbol$p');
  print(urlsAnalisis.toList());
}