import 'dart:io';
void main() {
  print('Ingrese su calificacion: ');
  int numero = int.parse(stdin.readLineSync()!);
  if (numero >= 7) {
    print('Aprobado');
  }else {
    print('Reprobado');
  }
}