void configurarPartido({
  required String rival,
  required int numeroSuplentes,
  bool esLocal = true,
  int duracionMinutos = 90,
}) {
  final condicion = esLocal ? 'Casa' : 'Visita';
  print('Partido contra $rival en condición de $condicion (Suplentes: $numeroSuplentes, Tiempo: ${duracionMinutos}min)');
}

void main() {
  configurarPartido(
    rival: 'Barcelona SC',
    numeroSuplentes: 5,
    esLocal: false,
    duracionMinutos: 95,
  );

  configurarPartido(
    rival: 'Independiente del Valle',
    numeroSuplentes: 7,
  );
}