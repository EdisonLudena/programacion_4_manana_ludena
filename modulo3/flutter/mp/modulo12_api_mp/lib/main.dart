import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'pantalla_paso1_users.dart';
import 'pantalla_paso2_user.dart';
import 'pantalla_paso1.dart';
import 'pantalla_paso2.dart';

class PantallaTemporal extends StatelessWidget {
  final String titulo;
  const PantallaTemporal({required this.titulo, super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(titulo)),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.hourglass_empty, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          Text(
            '$titulo\nPróximamente…',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          const SizedBox(height: 32),
          ElevatedButton.icon(
            icon: const Icon(Icons.arrow_back),
            label: const Text('Volver al menú'),
            onPressed: () => context.go('/'),
          ),
        ],
      ),
    ),
  );
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (_, __) => const PantallaMenu()),
    GoRoute(path: '/paso1', builder: (_, __) => const PantallaPaso1()),
    GoRoute(path: '/paso1-users', builder: (_, __) => const PantallaPaso1Users()),
    GoRoute(path: '/paso2', builder: (_, __) => const PantallaPaso2()),
    GoRoute(path: '/paso2-user', builder: (_, __) => const PantallaPaso2User()),
    GoRoute(path: '/paso3', builder: (_, __) => const PantallaTemporal(titulo: 'Paso 3 · Fichaje real')),
    GoRoute(path: '/paso4', builder: (_, __) => const PantallaTemporal(titulo: 'Paso 4 · Errores de plantilla')),
    GoRoute(path: '/paso5', builder: (_, __) => const PantallaTemporal(titulo: 'Paso 5 · Arquitectura de Fichajes')),
  ],
);

void main() => runApp(const ProviderScope(child: AppHttp()));

class AppHttp extends StatelessWidget {
  const AppHttp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerConfig: _router,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      useMaterial3: true,
    ),
  );
}

class PantallaMenu extends StatelessWidget {
  const PantallaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    const pasos = [
      _PasoInfo(
        ruta: '/paso1',
        titulo: 'Paso 1',
        subtitulo: 'Fichaje del Jugador',
        detalle: 'http.get() + FutureBuilder de Fichaje',
        icono: Icons.network_ping,
        color: Colors.blue,
      ),
      _PasoInfo(
        ruta: '/paso1-users',
        titulo: 'Paso 1 - Users',
        subtitulo: 'Perfil del Jugador',
        detalle: 'http.get() + FutureBuilder · API',
        icono: Icons.network_ping,
        color: Colors.blue,
      ),
      _PasoInfo(
        ruta: '/paso2',
        titulo: 'Paso 2',
        subtitulo: 'DTO de Fichaje',
        detalle: 'TodoDto.fromJson · lista de fichajes',
        icono: Icons.data_object,
        color: Colors.green,
      ),
      _PasoInfo(
        ruta: '/paso2-user',
        titulo: 'Paso 2 - Users',
        subtitulo: 'Lista de Jugadores',
        detalle: 'http.get() + FutureBuilder · API DTO',
        icono: Icons.network_ping,
        color: Colors.blue,
      ),
      _PasoInfo(
        ruta: '/paso3',
        titulo: 'Paso 3',
        subtitulo: 'Fichaje real + modelo de dominio',
        detalle: 'JugadorDto · toDomain() · API Club',
        icono: Icons.shopping_bag,
        color: Colors.orange,
      ),
      _PasoInfo(
        ruta: '/paso4',
        titulo: 'Paso 4',
        subtitulo: 'Errores de plantilla',
        detalle: 'sealed ApiError · Result<T>',
        icono: Icons.error_outline,
        color: Colors.red,
      ),
      _PasoInfo(
        ruta: '/paso5',
        titulo: 'Paso 5',
        subtitulo: 'Arquitectura de Fichajes',
        detalle: 'HttpClient · Repository · Riverpod Notifier',
        icono: Icons.architecture,
        color: Colors.purple,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Módulo 12 — API de Fichajes'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: pasos.length,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, i) {
          final p = pasos[i];
          return Card(
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(
                backgroundColor: p.color,
                radius: 24,
                child: Icon(p.icono, color: Colors.white),
              ),
              title: Text(
                '${p.titulo} · ${p.subtitulo}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  p.detalle,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.go(p.ruta),
            ),
          );
        },
      ),
    );
  }
}

class _PasoInfo {
  final String ruta;
  final String titulo;
  final String subtitulo;
  final String detalle;
  final IconData icono;
  final Color color;
  const _PasoInfo({
    required this.ruta,
    required this.titulo,
    required this.subtitulo,
    required this.detalle,
    required this.icono,
    required this.color,
  });
}