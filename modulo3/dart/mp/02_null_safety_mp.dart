void main() {
  String posicion = 'Delantero';

  String? directorTecnico = null;
  directorTecnico = 'Zubeldía';

  String? proximoRival;

  print(proximoRival?.length);

  String partidoEnFirme = proximoRival ?? 'Por definir';
  print(partidoEnFirme);

  String rivalConfirmado = proximoRival!;

  if (directorTecnico != null) {
    print(directorTecnico.length);
  }

  late String tokenArbitral;
  tokenArbitral = 'FIFA-9876';
  print(tokenArbitral);
}