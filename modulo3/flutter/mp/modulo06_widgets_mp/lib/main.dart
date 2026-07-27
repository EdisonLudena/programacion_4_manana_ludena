import 'package:flutter/material.dart';
import 'widgets/catalogo_basicos.dart';
import 'widgets/etiqueta.dart';
import 'widgets/servicio_estado.dart';
import 'widgets/contador_limitado.dart';
import 'widgets/reloj.dart';
import 'screens/pantalla_contexto.dart';
import 'widgets/indicador.dart';

const int paso = 8;

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    colorScheme:  ColorScheme.fromSeed(
      seedColor:  Colors.deepPurple,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  ),
  home: switch (paso) {
    1 => const Scaffold(body: Center(child: Saludo())),
    2 => const CatalogoBasicos(),
    3 => const Scaffold(
      body: Center(
        child: Wrap(
          spacing:    12,
          runSpacing: 8,
          children: [
            Etiqueta(texto: 'Disponible',    color: Colors.green),
            Etiqueta(texto: 'Lesionado',     color: Colors.red,    relleno: true),
            Etiqueta(texto: 'En espera', color: Colors.orange),
            Etiqueta(texto: 'Expulsado',   color: Colors.red,    fontSize: 16, relleno: true),
            Etiqueta(texto: 'Suplente',      color: Colors.blue,   fontSize: 11),
          ],
        ),
      ),
    ),
    4 => const Scaffold(
      body: Center(
        child: ServicioEstado(nombre: 'Lionel Messi'),
      ),
    ),
    5 => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContadorLimitado(
              etiqueta: 'Tarjetas Amarillas',
              limite:   1,
              color:    Colors.red,
              onLimite: () => debugPrint('¡Jugador Suspendido por acumulación!'),
            ),
            const SizedBox(height: 40),
            ContadorLimitado(
              etiqueta: 'Goles anotados en el torneo',
              limite:   10,
              color:    Colors.indigo,
            ),
          ],
        ),
      ),
    ),
    6 => Scaffold(
      appBar: AppBar(title: const Text('Cronómetro de Partido')),
      body: const Center(child: Reloj()),
    ),
    7 => const PantallaContexto(),   
    8 => Scaffold(
      body: Center(
        child: Wrap(
          spacing:    32,
          runSpacing: 24,
          alignment:  WrapAlignment.center,
          children: const [
            Indicador(label: 'Jugadores convocados', valor: '8',
                      color: Colors.green, icono: Icons.sports_soccer),
            Indicador(label: 'Bajas por lesión',   valor: '2',
                      color: Colors.red,   icono: Icons.warning_amber,
                      subtitulo: 'Requieren atención médica'),
            Indicador(label: 'Goles marcados',            valor: '42',
                      color: Colors.indigo),
            Indicador(label: 'Rendimiento general',             valor: '99.8%',
                      color: Colors.teal, subtitulo: 'Últimos 30 partidos'),
          ],
        ),
      ),
    ),
    _ => Scaffold(body: Center(child: Text('Paso $paso: crea el widget primero'))),
    
  },
));

class Saludo extends StatelessWidget {
  const Saludo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Aunque el director técnico detectó fatiga asociada a los entrenamientos y modelos de juego anticipan un planteamiento ofensivo fuerte, aún no hay alineación oficial confirmada para hoy.',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        letterSpacing: 4,
        color: Colors.deepOrange,
        shadows: [Shadow(color: Colors.black26, blurRadius: 4, offset: Offset(4,4))]
      ),
      textAlign: TextAlign.left,
      overflow: TextOverflow.ellipsis,
      maxLines: 3
    );
  }
}
