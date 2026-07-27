void main() {
  final posiciones = ['POR', 'DEF', 'MED', 'DEL', 'SUP'];

  for (final posicion in posiciones) {
    print(posicion);
  }

  posiciones.forEach((p) => print(p.toLowerCase()));

  final golesPorPosicion = {'POR': 0, 'DEF': 5, 'MED': 12, 'DEL': 35};
  for (final entrada in golesPorPosicion.entries) {
    print('Posición: ${entrada.key} → goles anotados: ${entrada.value}');
  }
}
