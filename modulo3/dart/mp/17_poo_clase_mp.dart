class Jugador {
  // 1. Propiedades
  final String id;
  final String apellido;
  String       posicion;
  bool         _titular = false;  // _ indica uso interno

  // 2. Constructor nombrado con parámetros nombrados
  Jugador({
    required this.id,
    required this.apellido,
    required this.posicion,
  });

  // 3. Getter — propiedad derivada, solo lectura
  bool   get titular => _titular;
  String get estado  => _titular ? 'en cancha' : 'en la banca';

  // 4. Setter — escritura controlada
  set asignacionTitular(bool valor) {
    _titular = valor;
    print('$apellido: ${valor ? "va desde el arranque" : "va como variante"}');
  }

  // 5. Métodos
  void ingresarAlPartido() {
    _titular = true;
    print('$apellido ingresó a la cancha como $posicion');
  }

  void salirDelPartido() {
    _titular = false;
    print('$apellido fue sustituido');
  }

  String resumen() => 'ID: $id | Jugador: $apellido | Posición: $posicion | Estado: $estado';

  // 6. toString
  @override
  String toString() => 'Jugador($apellido, $posicion, $estado)';
}

void main() {
  // Crear una instancia
  final mediocampista = Jugador(
    id:     'JUG-010',
    apellido: 'Arce',
    posicion: 'Enganche',
  );

  // Usar sus métodos y propiedades
  mediocampista.ingresarAlPartido();
  print(mediocampista.estado);       // en cancha
  print(mediocampista.resumen());
  print(mediocampista);              // llama toString() automáticamente

  mediocampista.asignacionTitular = false;  // usa el setter
  print(mediocampista.titular);   // false
}