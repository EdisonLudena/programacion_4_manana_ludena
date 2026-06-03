import 'dart:io';
void main() {
  print('Ingrese un año: ');
  int numero = int.parse(stdin.readLineSync()!);
  if ((numero % 4 == 0 && numero % 100 != 0) || (numero % 400 == 0)) {
    print('Bisiesto');
  }else {
    print('No bisiesto');
  }
}