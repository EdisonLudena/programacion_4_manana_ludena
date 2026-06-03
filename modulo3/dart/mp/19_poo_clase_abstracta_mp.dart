// abstract class define el contrato — QUÉ puede hacer cualquier Rol en el equipo
abstract class RolEquipo {
  String get nombreJugador;
  String get posicion;
  double calcularRendimientoFisico(); // cada rol lo implementa a su manera
  double calcularEfectividadTactica();

  // Método concreto construido sobre la abstracción
  void generarInforme() {
    print('$nombreJugador ($posicion) — Rendimiento Físico: ${calcularRendimientoFisico().toStringAsFixed(1)}%, '
          'Efectividad: ${calcularEfectividadTactica().toStringAsFixed(1)}%');
  }
}

// Implementaciones concretas — el CÓMO es específico de cada clase
class Delantero extends RolEquipo {
  final String nombre;
  final int remates, goles;
  Delantero(this.nombre, this.remates, this.goles);

  @override String get nombreJugador => nombre;
  @override String get posicion => 'Delantero';
  @override double calcularRendimientoFisico() => 85.0; // Desgaste promedio en sprint
  @override double calcularEfectividadTactica() => remates > 0 ? (goles / remates) * 100 : 0.0;
}

class Mediocampista extends RolEquipo {
  final String nombre;
  final int pasesTotales, pasesAcertados;
  Mediocampista(this.nombre, this.pasesTotales, this.pasesAcertados);

  @override String get nombreJugador => nombre;
  @override String get posicion => 'Mediocampista';
  @override double calcularRendimientoFisico() => 95.5; // Mayor recorrido en la cancha
  @override double calcularEfectividadTactica() => pasesTotales > 0 ? (pasesAcertados / pasesTotales) * 100 : 0.0;
}

void main() {
  final alineacion = <RolEquipo>[
    Delantero('Arce', 5, 2),
    Mediocampista('Piovi', 45, 39)
  ];

  for (final jugador in alineacion) {
    jugador.generarInforme(); // no importa qué rol específico tenga el jugador
  }
}