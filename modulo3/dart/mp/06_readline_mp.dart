import 'dart:io';

void main(){
  print('Ingrese el nombre del jugador:');
  String? nombreJugador = stdin.readLineSync();
  print('Jugador registrado: $nombreJugador');

  print('Ingrese el dorsal del jugador: ');
  int dorsal = int.parse(stdin.readLineSync()!);
  print('Dorsal: $dorsal');

  print('Ingrese el salario del jugador:');
  double salario = double.parse(stdin.readLineSync()!);
  print('Salario: $salario');

  print('Ingrese los goles de ida: ');
  int golesIda = int.parse(stdin.readLineSync()!);

  print('Ingrese los goles de vuelta: ');
  int golesVuelta = int.parse(stdin.readLineSync()!);

}
