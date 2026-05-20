import 'dart:io';
void main() {
  int total = 0;
  int cantidad = 1;

  while (cantidad != 0) {
    print('Ingrese la cantidad de piezas: ');
    cantidad = int.parse(stdin.readLineSync()!);
    total = cantidad + total;
  }

  if(total < 50){
    print('Produccion baja');
  } else {
    print('Produccion adecuada');
  }


  print('Total piezas producidas: $total');

}