void main() {
  int golesLocales = 3;
  double minutosPromedio = golesLocales.toDouble();
  String dorsalTexto = golesLocales.toString();

  int idPartido = int.parse('105');
  double distanciaRecorrida = double.parse('11.45');

  int? aforoEstimado = int.tryParse('diez_mil');
  double? calificacionTecnica = double.tryParse('8.5');

  Object posicionJugador = 'Mediocampista';
  if (posicionJugador is String) {
    print(posicionJugador.length);
  }

  Object datosEquipo = 'Liga de Quito';
  String nombreEquipo = datosEquipo as String;

  String? informeArbitral = null;
  int longitudInforme = informeArbitral?.length ?? 0;
  print(longitudInforme);

  print(double.infinity);
  print(double.nan);
  print(double.maxFinite);
}