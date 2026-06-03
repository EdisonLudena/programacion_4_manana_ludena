class Estadio {
  final String nombre;
  final String ciudad;
  final int    capacidad;
  final bool   tieneLuminarias;

  // Constructor principal
  Estadio({
    required this.nombre,
    required this.ciudad,
    required this.capacidad,
    this.tieneLuminarias = true,
  });

  // Constructor nombrado — alternativa de creación con configuración predefinida
  Estadio.casaBlanca()
      : nombre          = 'Estadio Rodrigo Paz Delgado',
        ciudad          = 'Quito',
        capacidad       = 41575,
        tieneLuminarias = true;

  Estadio.alterno({required this.nombre, required this.ciudad})
      : capacidad       = 15000,
        tieneLuminarias = false;

  // Constructor factory — lógica de creación más compleja
  factory Estadio.desdeTextoPlano(String datos) {
    // Analiza una línea de texto separada por comas y extrae sus partes
    final partes = datos.split(',');
    final nombreEstadio = partes[0].trim();
    final ciudadEstadio = partes[1].trim();
    final capacidadEstadio = int.parse(partes[2].trim());
    
    return Estadio(
      nombre:          nombreEstadio,
      ciudad:          ciudadEstadio,
      capacidad:       capacidadEstadio,
      tieneLuminarias: capacidadEstadio > 20000, // Lógica automatizada
    );
  }

  @override
  String toString() =>
      '$nombre ($ciudad) - Capacidad: $capacidad espectadores | Luces: ${tieneLuminarias ? "Sí" : "No"}';
}

void main() {
  final e1 = Estadio(nombre: 'Estadio Monumental', ciudad: 'Guayaquil', capacidad: 57000);
  final e2 = Estadio.casaBlanca();
  final e3 = Estadio.alterno(nombre: 'Estadio Olímpico Atahualpa', ciudad: 'Quito');
  final e4 = Estadio.desdeTextoPlano('Estadio Alejandro Serrano Aguilar, Cuenca, 16500');

  print(e1);
  print(e2);
  print(e3);
  print(e4);
}