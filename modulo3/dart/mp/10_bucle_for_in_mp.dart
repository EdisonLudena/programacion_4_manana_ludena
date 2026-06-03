void main() {
  final equipos = ['Liga de Quito', 'Barcelona SC', 'Independiente del Valle', 'Emelec', 'El Nacional'];

  for (final equipo in equipos) {
    print(equipo);
  }

  equipos.forEach((e) => print(e.toLowerCase()));

  final goleadores = {'Arce': 15, 'Anangonó': 12, 'Jeison': 10, 'Estrada': 8};
  for (final entrada in goleadores.entries) {
    print('${entrada.key} → ${entrada.value} goles');
  }
}