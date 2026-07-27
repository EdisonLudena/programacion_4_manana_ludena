class Equipo {
  final String nombre;
  final String ciudad;
  final int    capacidadEstadio;
  final bool   esProfesional;

  Equipo({
    required this.nombre,
    required this.ciudad,
    required this.capacidadEstadio,
    this.esProfesional = false,
  });

  Equipo.local()
      : nombre = 'Club Local',
        ciudad       = 'Mi Ciudad',
        capacidadEstadio   = 8080,
        esProfesional   = false;

  Equipo.produccion({required this.nombre, required this.ciudad})
      : capacidadEstadio  = 443,
        esProfesional  = true;

  factory Equipo.desdeUrl(String url) {
    final uri = Uri.parse(url);
    return Equipo(
      nombre: uri.host,
      ciudad:       uri.host,
      capacidadEstadio:   uri.port != 0 ? uri.port : (uri.scheme == 'https' ? 443 : 80),
      esProfesional:   uri.scheme == 'https',
    );
  }

  @override
  String toString() =>
      '${esProfesional ? "PRO" : "AMATEUR"}://$nombre:$capacidadEstadio';
}

void main() {
  final e1 = Equipo(nombre: 'api.mi-app.com', ciudad: '10.0.1.5', capacidadEstadio: 3000);
  final e2 = Equipo.local();
  final e3 = Equipo.produccion(nombre: 'api.mi-app.com', ciudad: '10.0.1.5');
  final e4 = Equipo.desdeUrl('https://pagos.mi-app.com:8443/v1');

  print(e1);
  print(e2);
  print(e3);
  print(e4);
}
