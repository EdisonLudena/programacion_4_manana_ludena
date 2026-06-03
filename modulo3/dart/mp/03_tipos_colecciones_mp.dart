void main() {
  List<String> equipos = ['Barcelona SC', 'Emelec', 'Independiente del Valle'];
  var dorsales = [1, 5, 8, 10, 11];

  print(equipos[0]);
  print(equipos.length);
  equipos.add('Liga de Quito');
  equipos.remove('Emelec');

  Map<String, int> tablaGoleadores = {
    'Anangonó': 12,
    'Arce': 15,
    'Jeison': 10,
  };

  print(tablaGoleadores['Anangonó']);
  print(tablaGoleadores['Martínez']);
  tablaGoleadores['Estrada'] = 14;

  Set<String> posicionesCancha = {'Arquero', 'Defensa', 'Mediocampista'};
  posicionesCancha.add('Arquero');
  print(posicionesCancha.length);

  var convocadosLocales = [1, 2, 3];
  var convocadosExtranjeros = [4, 5, 6];
  var plantillaCompleta = [...convocadosLocales, ...convocadosExtranjeros];
  print(plantillaCompleta);

  bool incluyeSuplentes = true;
  var listaConvocatoria = [
    'Titular 1',
    'Titular 2',
    if (incluyeSuplentes) 'Suplente 1',
  ];

  var minutosEntrenamiento = [for (var i = 1; i <= 5; i++) i * 15];
  print(minutosEntrenamiento);
}