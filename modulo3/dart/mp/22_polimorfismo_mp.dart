abstract class ElementoPartido {
  String get nombre;
  double calcularTiempoEfectivo();
}

class TiempoRegular extends ElementoPartido {
  final double minutosReglamentarios;
  TiempoRegular(this.minutosReglamentarios);
  @override String get nombre => 'Tiempo Regular';
  @override double calcularTiempoEfectivo() => minutosReglamentarios;
}

class TiempoAdicional extends ElementoPartido {
  final double minutosAnadidos;
  TiempoAdicional(this.minutosAnadidos);
  @override String get nombre => 'Tiempo de Adición';
  @override double calcularTiempoEfectivo() => minutosAnadidos * 0.8;
}

class TiempoExtra extends ElementoPartido {
  final double minutosProrroga;
  TiempoExtra(this.minutosProrroga);
  @override String get nombre => 'Prórroga / Tiempo Extra';
  @override double calcularTiempoEfectivo() => minutosProrroga * 0.9;
}

void imprimirDetalleTiempo(ElementoPartido elemento) {
  print('${elemento.nombre}: ${elemento.calcularTiempoEfectivo().toStringAsFixed(1)} min de juego real');
}

void main() {
  final partesDelJuego = <ElementoPartido>[
    TiempoRegular(90.0),
    TiempoAdicional(5.0),
    TiempoExtra(30.0),
  ];

  for (final parte in partesDelJuego) {
    imprimirDetalleTiempo(parte);
  }

  final mayorDesgaste = partesDelJuego.reduce((a, b) => a.calcularTiempoEfectivo() > b.calcularTiempoEfectivo() ? a : b);
  print('\nFase con mayor tiempo efectivo: ${mayorDesgaste.nombre}');
}