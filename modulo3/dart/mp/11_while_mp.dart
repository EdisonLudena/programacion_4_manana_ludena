void main() {
  int fichajes = 0;
  int presupuesto = 1024;

  while (presupuesto > 0) {
    final costoFichaje = presupuesto > 256 ? 256 : presupuesto;
    fichajes++;
    presupuesto -= costoFichaje;
    print('Fichaje $fichajes: $costoFichaje millones (restante: $presupuesto)');
  }

  int pruebasFisicas = 0;
  bool aprobadoMedicamente = false;

  do {
    pruebasFisicas++;
    print('Prueba física #$pruebasFisicas...');
    if (pruebasFisicas == 3) aprobadoMedicamente = true;
  } while (!aprobadoMedicamente && pruebasFisicas < 5);

  print(aprobadoMedicamente
      ? 'Aprobado tras $pruebasFisicas pruebas'
      : 'No aprobó el examen médico');
}
