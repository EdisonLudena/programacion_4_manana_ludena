void main() {
  int cansancio = 38;

  if (cansancio > 37.5) {
    print('Fatiga extrema');
  } else if (cansancio > 36) {
    print('Físico normal');
  } else {
    print('Muy descansado');
  }

  String estadoFisico = cansancio > 37.5 ? 'Agotado' : 'Activo';
  print(estadoFisico);

  String? club;
  String verClub = club != null ? club.toUpperCase() : 'Sin club';

  String verClub2 = club?.toUpperCase() ?? 'Sin club';
  print(verClub2);

  void main() {
    String? nombreJugador;


    if (nombreJugador != null) {
      print(nombreJugador.length);
    }

    print(nombreJugador?.length);

    int longitudNombre = nombreJugador?.length ?? 0;
    print(longitudNombre);
  }
}
