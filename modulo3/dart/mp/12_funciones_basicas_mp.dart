int sumarGoles(int a, int b) {
  return a + b;
}


int golesBase(){
  return 5+2;
}
int calcularPuntos(int victorias, int factor) => victorias * factor;

void imprimirCategoria(String titulo) {
  print('─── $titulo ───');
}



String formatearValorMercado(double valor) => '\$${valor.toStringAsFixed(2)}M';

formatearValorMercadoSinTipo(double valor) => '\$${valor.toStringAsFixed(2)}M';


String construirFicha(String equipo, String jugador, [int? dorsal]) {
  if (dorsal != null) {
    return 'club://$equipo:$dorsal/$jugador';
  }
  return 'club://$equipo/$jugador';
}

String construirFichaV2(String equipo, String jugador, [int dorsal = 10]) {
  return 'club://$equipo:$dorsal/$jugador';
}



void main() {
  print(golesBase());
  print(sumarGoles(5, 3));
  print(formatearValorMercado(1299.9));
  print(calcularPuntos(4, 6));
  imprimirCategoria('Inicio');

  print(construirFicha('realmadrid.com', 'messi'));
  print(construirFicha('realmadrid.com', 'messi', 8080));
  print(construirFichaV2('realmadrid.com', 'cr7'));
}
