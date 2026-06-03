import 'dart:io';

void main() {
  print('Ingrese el nombre del equipo:');
  String? nombreEquipo = stdin.readLineSync();
  print('Equipo registrado: $nombreEquipo');

  print('Ingrese el número de camisetas para la plantilla:');
  int cantidadCamisetas = int.parse(stdin.readLineSync()!);
  print('Camisetas: $cantidadCamisetas');

  print('Ingrese la calificación promedio del partido:');
  double calificacionPartido = double.parse(stdin.readLineSync()!);
  print('Calificación: $calificacionPartido');

  print('Ingrese los goles del equipo local:');
  int golesLocales = int.parse(stdin.readLineSync()!);

  print('Ingrese los goles del equipo visitante:');
  int golesVisitantes = int.parse(stdin.readLineSync()!);
}