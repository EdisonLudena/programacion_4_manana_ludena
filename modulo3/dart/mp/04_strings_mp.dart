void main() {
  final equipo = 'Liga de Quito';
  final goles = 3;

  print('Goles de $equipo');

  print('${equipo.toUpperCase()} anotó ${goles + 1} goles en el global');

  final informePartido = '''
Equipo:  $equipo
Goles:   $goles
Ganador: ${goles >= 1 ? 'Sí' : 'No'}
  ''';
  print(informePartido);

  final rutaEstrategia = r'C:\Alineaciones\LigaDeQuito\Tacticas';
  print(rutaEstrategia);

  final cantico = 'Vamos, ' + equipo + '!';

  print('gol'.toUpperCase());
  print('  Árbitro  '.trim());
  print('Mediocampista'.contains('cam'));
  print('Penal'.replaceAll('a', 'A'));
  print('Arquero,Defensa,Delantero'.split(','));
  print('Campeonato'.substring(0, 4));
  print('Balón'.startsWith('Bal'));
  print('10'.padLeft(5, '0'));
}