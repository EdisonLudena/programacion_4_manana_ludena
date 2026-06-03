void main() {
  String dorsalJugador = '10';

  switch (dorsalJugador) {
    case '1':
      print('Arquero');
    case '2':
      print('Defensa Central');
    case '5':
      print('Mediocampista de marca');
    case '8':
      print('Volante mixto');
    case '10':
      print('Enganche creativo');
    case '11':
      print('Extremo izquierdo');
    default:
      print('Posición alternativa');
  }

  String dorsalJugador2 = '10';

  String rolTactico = switch (dorsalJugador2) {
    '1' => 'Guardameta titular',
    '2' => 'Zaguero defensivo',
    '4' => 'Lateral derecho',
    '5' => 'Pivote defensivo',
    '8' => 'Interior organizador',
    '9' => 'Centrodelantero / Ariete',
    '10' => 'Creador de juego',
    '11' => 'Atacante por banda',
    '14' => 'Relevo recurrente',
    _ => 'Jugador polifuncional',
  };

  print(rolTactico);

  int idPosicion = 9;

  String sectorCancha = switch (idPosicion) {
    1 => 'Portería',
    2 || 3 || 4 || 6 => 'Línea Defensiva',
    5 || 8 || 10 => 'Zona de Volantes',
    7 || 9 || 11 => 'Frente de Ataque',
    _ => 'Banca de suplentes',
  };

  print(sectorCancha);

  double calificacionRendimiento = 8.7;

  String evaluacionDTSwitch = switch (calificacionRendimiento) {
    double c when c >= 9.5 => 'Figura indiscutible — Nivel internacional',
    double c when c >= 8.5 => 'Partido destacado — Rendimiento alto',
    double c when c >= 7.0 => 'Cumplió en la cancha — Regular',
    double c when c >= 6.0 => 'Bajo rendimiento — Ajustar marca',
    _ => 'Revisión técnica — Posible suplencia',
  };

  print(evaluacionDTSwitch);

  Object datosPartido = {'id': 9, 'apellido': 'Arce', 'goles': 2};

  String resultadoAnalisis = switch (datosPartido) {
    Map<String, dynamic> m when m.containsKey('tarjeta_roja') =>
        'Expulsado: ${m['tarjeta_roja']}',
    Map<String, dynamic> m =>
        'Jugador: ${m['apellido']} — Goles anotados: ${m['goles']}',
    List<dynamic> lista =>
        '${lista.length} sustituciones realizadas',
    String texto =>
        'Reporte médico: $texto',
    _ =>
        'Registro no especificado',
  };

  print(resultadoAnalisis);
}