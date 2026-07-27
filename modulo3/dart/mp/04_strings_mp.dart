void main() {
  final entrenador = 'Pep';
  final experiencia = 15;

  print('Entrenador: $entrenador');

  print('${entrenador.toUpperCase()} tendrá ${experiencia + 1} años de carrera el próximo año');

  final fichaEntrenador = '''
Entrenador: $entrenador
Experiencia: $experiencia años
Calificado:  ${experiencia >= 10 ? 'Sí' : 'No'}
  ''';
  print(fichaEntrenador);

  final rutaPlantilla = r'C:\Equipos\Futbol\Plantilla';
  print(rutaPlantilla);

  final bienvenida = 'Bienvenido, ' + entrenador + '!';

  print('realmadrid'.toUpperCase());
  print('  Real Madrid  '.trim());
  print('Real Madrid'.contains('Mad'));
  print('Real Madrid'.replaceAll('d', 'D'));
  print('del,med,def'.split(','));
  print('Real Madrid'.substring(0, 4));
  print('Real Madrid'.startsWith('Rea'));
  print('d10'.padLeft(5, '0'));
}
