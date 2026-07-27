class MiembroEquipo {
  final String nombre;
  final int    edadAnios;

  MiembroEquipo(this.nombre, this.edadAnios);

  String obtenerRol() => '...';

  void presentarse() {
    print('Soy $nombre, tengo $edadAnios años y mi rol es: ${obtenerRol()}');
  }
}

class Jugador extends MiembroEquipo {
  Jugador(super.nombre, super.edadAnios);

  @override
  String obtenerRol() => 'Futbolista';

  void chutar() => print('$nombre entrena con el balón ⚽');
}

class Entrenador extends MiembroEquipo {
  Entrenador(super.nombre, super.edadAnios);

  @override
  String obtenerRol() => 'Director Técnico';

  void dirigir() => print('$nombre planifica la táctica en la pizarra 📋');
}

void main() {
  final jugador = Jugador('Messi', 36);
  final entrenador  = Entrenador('Pep', 53);

  jugador.presentarse();
  entrenador.presentarse();

  jugador.chutar();
  entrenador.dirigir();
}
