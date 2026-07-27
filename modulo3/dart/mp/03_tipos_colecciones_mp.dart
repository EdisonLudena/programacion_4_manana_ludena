void main() {
  List<String> jugadores = ['Messi', 'Ronaldo', 'Neymar'];
  var          goles     = [1, 2, 3, 4, 5];

  print(jugadores[0]);
  print(jugadores.length);
  jugadores.add('Mbappé');
  jugadores.remove('Ronaldo');

  Map<String, int> dorsales = {
    'Messi':   10,
    'Ronaldo':  7,
    'Neymar': 11,
  };

  print(dorsales['Messi']);
  print(dorsales['Mbappé']);
  dorsales['Suárez'] = 9;

  Set<String> posiciones = {'delantero', 'mediocampista', 'defensa'};
  posiciones.add('delantero');
  print(posiciones.length);

  var equipoA = [1, 2, 3];
  var equipoB = [4, 5, 6];
  var plantillaCompleta = [...equipoA, ...equipoB];
  print(plantillaCompleta);

  bool incluirSuplente = true;
  var convocados = [
    'jugador1',
    'jugador2',
    if (incluirSuplente) 'jugador3',
  ];

  var dorsalesCalculados = [for (var i = 1; i <= 5; i++) i * i];
  print(dorsalesCalculados);
}
