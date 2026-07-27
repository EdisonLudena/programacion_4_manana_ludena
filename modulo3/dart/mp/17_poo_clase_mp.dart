class Jugador {
  final String id;
  final String nombre;
  String       posicion;
  bool         _convocado = false;

  Jugador({
    required this.id,
    required this.nombre,
    required this.posicion,
  });

  bool   get convocado => _convocado;
  String get estado    => _convocado ? 'activo' : 'inactivo';

  set estadoConvocado(bool valor) {
    _convocado = valor;
    print('$nombre: ${valor ? "convocado" : "desconvocado"}');
  }

  void convocar() {
    _convocado = true;
    print('$nombre convocado en posicion $posicion');
  }

  void desconvocar() {
    _convocado = false;
    print('$nombre desconvocado');
  }

  String resumen() => 'ID: $id | Nombre: $nombre | Posicion: $posicion | Estado: $estado';

  @override
  String toString() => 'Jugador($nombre, $posicion, $estado)';
}

void main() {
  final delantero = Jugador(
    id:     'JUG-010',
    nombre: 'Lionel Messi',
    posicion:     'Delantero',
  );

  delantero.convocar();
  print(delantero.estado);
  print(delantero.resumen());
  print(delantero);

  delantero.estadoConvocado = false;
  print(delantero.convocado);
}
