class PersonaClub {
  final String nombre;
  final int edadAnios;

  PersonaClub(this.nombre, this.edadAnios);

  String cumplirRol() => '...';

  void presentarse() {
    print('Soy $nombre, tengo $edadAnios años y mi rol es: ${cumplirRol()}');
  }
}

class Jugador extends PersonaClub {
  Jugador(super.nombre, super.edadAnios);

  @override
  String cumplirRol() => 'Jugar en la cancha y anotar goles';

  void entrenar() => print('$nombre está entrenando en el gimnasio');
}

class DirectorTecnico extends PersonaClub {
  DirectorTecnico(super.nombre, super.edadAnios);

  @override
  String cumplirRol() => 'Dirigir los partidos y armar la estrategia';

  void darInstrucciones() => print('$nombre está dando indicaciones en la pizarra');
}

void main() {
  final jugador = Jugador('Arce', 28);
  final dt = DirectorTecnico('Vitamina', 54);

  jugador.presentarse();
  dt.presentarse();

  jugador.entrenar();
  dt.darInstrucciones();
}