void main() {
  String nombreEquipo = 'Real Madrid';

  String? patrocinador = null;
  patrocinador = 'Adidas';

  String? estadio;

  print(estadio?.length);

  String nombreEstadio = estadio ?? 'Sin estadio';
  print(nombreEstadio);

  String estadioSeguro = estadio!;

  if (patrocinador != null) {
    print(patrocinador.length);
  }

  late String codigoEntrenador;
  codigoEntrenador = 'abc123';
  print(codigoEntrenador);
}
