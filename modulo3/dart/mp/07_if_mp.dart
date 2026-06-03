void main() {
  int minutosTranscurridos = 38;

  if (minutosTranscurridos > 90) {
    print('Tiempo de descuento');
  } else if (minutosTranscurridos > 45) {
    print('Segundo tiempo');
  } else {
    print('Primer tiempo');
  }

  String estadoPartido = minutosTranscurridos > 90 ? 'Partido finalizado' : 'Partido en juego';
  print(estadoPartido);

  String? directorTecnico;
  String displayTecnico = directorTecnico != null ? directorTecnico.toUpperCase() : 'Sin estratega';

  String displayTecnico2 = directorTecnico?.toUpperCase() ?? 'Sin estratega';
  print(displayTecnico2);

  void subProceso() {
    String? proximoRival;

    if (proximoRival != null) {
      print(proximoRival.length);
    }

    print(proximoRival?.length);

    int longitudRival = proximoRival?.length ?? 0;
    print(longitudRival);
  }
}