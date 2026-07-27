void registrarJugador({
  required String nombre,
  required int    dorsal,
  bool   titular    = true,
  int    contratoAnios = 3,
}) {
  final estado = titular ? 'Titular' : 'Suplente';
  print('Registrando a $nombre ($estado) con dorsal $dorsal (contrato: ${contratoAnios} años)');
}

void main() {
  registrarJugador(
    nombre:       'Lionel Messi',
    dorsal:     10,
    titular:        false,
    contratoAnios: 2,
  );

  registrarJugador(
    nombre:   'Cristiano Ronaldo',
    dorsal: 7,
  );
}
