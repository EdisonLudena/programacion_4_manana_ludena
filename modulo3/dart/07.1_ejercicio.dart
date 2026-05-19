import 'dart:io';
void main() {

  print('Ingrese un numero entero: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero > 0) {
    print('Positiv0');
  } else if (numero < 0) {
    print('Negativo');
  } else {
    print('Es cero');
  }
    
  }