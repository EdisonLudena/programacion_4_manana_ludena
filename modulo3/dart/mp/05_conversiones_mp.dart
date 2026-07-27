void main() {
  int    partidosJugados = 42;
  double promedioPartidos = partidosJugados.toDouble();
  String textoPartidos   = partidosJugados.toString();

  int    golesParseados = int.parse('123');
  double valorMercadoParseado = double.parse('3.14');

  int?    tarjetasParseadas = int.tryParse('abc');
  double? efectividadParseada = double.tryParse('99');

  Object datoJugador = 'texto';
  if (datoJugador is String) {
    print(datoJugador.length);
  }

  Object objetoEquipo = 'Hola';
  String nombreEquipoCast = objetoEquipo as String;

  String? posicionNullable = null;
  int longitudPosicion = posicionNullable?.length ?? 0;
  print(longitudPosicion);

  print(double.infinity);
  print(double.nan);
  print(double.maxFinite);
}
