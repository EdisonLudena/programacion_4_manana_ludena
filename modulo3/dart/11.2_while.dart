import 'dart:io';
void main() {
  int total = 0;
  int cantidad = 1;
  int empleados = 0;

  while (cantidad > 0) {
    //print('Ingrese nombre del empleado:');
    //String? nombre = stdin.readLineSync();
    print('Ingrese la cantidad de cajas empacadas: ');
    cantidad = int.parse(stdin.readLineSync()!);   
    if(cantidad > 0){
      empleados++;
    }
    
    total = cantidad + total;
  }

  if(total < 20){
    print('Rendimiento Bajo');
  } else if( total < 50 ) {
    print('Rendimiento Normal');
  } else{
    print('Rendimiento Excelente');
  }
  double promedio = total / empleados;


  print('Total piezas producidas: $total');
  print('Total de empleados registrados: $empleados');
  print('Promedio de cajas por empleado: $promedio');

}