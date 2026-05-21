import 'dart:io';
void main() {
  int total = 0;
  int cantidad = 1;
  int empleados = 0;
  int horas = 1;

  while (horas > 0) {
    print('Ingrese la cantidad de horas trabajadas ');
    horas = int.parse(stdin.readLineSync()!);  
      
    if(horas > 0){
      print('Ingrese la cantidad de sillas fabricadas: ');
      cantidad = int.parse(stdin.readLineSync()!); 
      empleados++;
    }else{
      cantidad =0;
    }
    
    total = cantidad + total;
    double pr = cantidad / horas;
    print('Sillas fabricadas por hora: $pr');
    if(pr < 2){
      print('Produccion Baja');
    } else if( pr < 4 ) {
      print('Produccion Normal');
    } else{
      print('Produccion alta');
    }

  }
  
  double promedio = total / empleados;


  print('Total piezas producidas: $total');
  print('Total de empleados registrados: $empleados');
  print('Promedio de cajas por empleado: $promedio');

}