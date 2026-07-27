void main() {
  final valoresMercado = [29.99, 49.50, 15.00, 99.99];

  final valoresConImpuestos = valoresMercado.map((p) => p * 1.15);
  print(valoresConImpuestos.toList());

  final rutasFichas = ['/messi', '/ronaldo', '/neymar'];
  final urls = rutasFichas.map((e) => 'https://clubfutbol.com$e');
  print(urls.toList());
}
