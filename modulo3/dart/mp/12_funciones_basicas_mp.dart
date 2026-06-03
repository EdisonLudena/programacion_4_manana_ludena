int calcularGolesGlobal(int ida, int vuelta) {
  return ida + vuelta;
}

int calcularGolesMinimos() {
  return 1 + 0;
}

int calcularPuntos(int partidosGanados, int valorVictoria) => partidosGanados * valorVictoria;

void imprimirSeccionPartido(String fase) {
  print('─── $fase ───');
}

String formatearTiempo(double minutos) => '${minutos.toStringAsFixed(1)} min';

formatearTiempoSinTipo(double minutos) => '${minutos.toStringAsFixed(1)} min';

String generarFichaPartido(String local, String visitante, [int? golesLocal]) {
  if (golesLocal != null) {
    return '$local ($golesLocal) vs $visitante';
  }
  return '$local vs $visitante';
}

String generarFichaPartidoV2(String local, String visitante, [int golesLocal = 0]) {
  return '$local ($golesLocal) vs $visitante';
}

void main() {
  print(calcularGolesMinimos());
  print(calcularGolesGlobal(2, 1));
  print(formatearTiempo(45.5));
  print(calcularPuntos(3, 3));
  imprimirSeccionPartido('Final de Ida');

  print(generarFichaPartido('Liga de Quito', 'Barcelona SC'));
  print(generarFichaPartido('Liga de Quito', 'Barcelona SC', 2));
  print(generarFichaPartidoV2('Independiente del Valle', 'Emelec'));
}