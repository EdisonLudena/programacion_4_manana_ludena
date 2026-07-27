void main() {

  String dorsalJugador = '404';

  switch (dorsalJugador) {
    case '200':
      print('Portero Histórico');
    case '201':
      print('Defensa Especial');
    case '400':
      print('Mediocampista Clásico');
    case '401':
      print('Extremo Veloz');
    case '404':
      print('Delantero Desconocido');
    case '500':
      print('Entrenador Suspendido');
    default:
      print('Dorsal no asignado');
  }
  String dorsalJugador2 = '404';

  String descripcion = switch (dorsalJugador2) {
    '200' => 'OK — jugador habilitado',
    '201' => 'Created — ficha creada',
    '204' => 'No Content — sin historial',
    '400' => 'Bad Request — datos de jugador inválidos',
    '401' => 'Unauthorized — sin transferir',
    '403' => 'Forbidden — jugador suspendido',
    '404' => 'Not Found — jugador no registrado',
    '500' => 'Internal Server Error en la base de fichajes',
    '503' => 'Servicio de transferencias no disponible',
    _     => 'Dorsal / ID desconocido',
  };

  print(descripcion);

  int idFichaje = 404;

  String categoriaFichaje = switch (idFichaje) {
    200 || 201 || 204       => 'Convocado Regular (2xx)',
    301 || 302 || 307       => 'Cedido a otro club (3xx)',
    400 || 401 || 403 || 404 => 'Error en registro de fichaje (4xx)',
    500 || 502 || 503       => 'Error administrativo de liga (5xx)',
    _                       => 'Categoría desconocida',
  };

  print(categoriaFichaje);

  double fatigaJugador = 39.2;

  String alertaFisica = switch (fatigaJugador) {
    double t when t >= 40.0 => '🚨 CRÍTICO — Lesión severa detectada',
    double t when t >= 38.5 => '🔴 FATIGA ALTA — Requiere cambio',
    double t when t >= 37.5 => '🟡 FATIGA LEVE — Monitorear condición',
    double t when t >= 36.0 => '🟢 CONDICIÓN EXCELENTE',
    _                       => '🔵 BAJO RENDIMIENTO — Calentando',
  };

  print(alertaFisica);

  Object infoJugador = {'id': 1, 'nombre': 'Teclado', 'precio': 89.99};

  String resultado = switch (infoJugador) {
    Map<String, dynamic> m when m.containsKey('error') =>
        'Error de fichaje: ${m['error']}',
    Map<String, dynamic> m =>
        'Jugador: ${m['nombre']} — \$${m['precio']}M',
    List<dynamic> lista =>
        '${lista.length} jugadores en la plantilla',
    String texto =>
        'Nombre del club recibido: $texto',
    _ =>
        'Datos del equipo desconocidos',
  };

  print(resultado);
}
