import 'dart:io';
void main() {
  print('Ingrese el numero para la tabla: ');
  int numero = int.parse(stdin.readLineSync()!);
  print('Numero: $numero');
  print('Tabla del : $numero');
  for (int i = 1; i < 11; i++) {
    int valor = numero*i;
    print('$numero * $i = $valor');
  }
}