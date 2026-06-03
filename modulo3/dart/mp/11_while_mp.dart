void main() {
  int remates = 0;
  int energiaJugador = 1024;

  while (energiaJugador > 0) {
    final desgaste = energiaJugador > 256 ? 256 : energiaJugador;
    remates++;
    energiaJugador -= desgaste;
    print('Remate $remates: gastó $desgaste de energía (restante: $energiaJugador)');
  }

  int tirosAlArco = 0;
  bool esGol = false;

  do {
    tirosAlArco++;
    print('Tiro al arco #$tirosAlArco...');
    
    if (tirosAlArco == 3) esGol = true;
  } while (!esGol && tirosAlArco < 5);

  print(esGol
      ? '¡Gol anotado tras $tirosAlArco intentos!'
      : 'El partido terminó sin goles');
}