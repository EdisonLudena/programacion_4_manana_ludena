class ServidorSSH {
  final String id;
  final String nombre;
  final String ip;
  final int    puerto;
  final bool   ssl;

  const ServidorSSH({
    required this.id,
    required this.nombre,
    required this.ip,
    required this.puerto,
    required this.ssl,
  });
}

const servidoresSimulados = [
  ServidorSSH(id: '1', nombre: 'Lionel Messi', ip: 'Argentina',   puerto: 10,   ssl: true),
  ServidorSSH(id: '2', nombre: 'Cristiano Ronaldo',  ip: 'Portugal',   puerto: 7,   ssl: true),
  ServidorSSH(id: '3', nombre: 'Neymar Jr', ip: 'Brasil',   puerto: 11, ssl: false),
];