import 'package:flutter/material.dart';
import 'widgets/tarjeta_log.dart';
import 'widgets/fila_estado.dart';
import 'widgets/avatar_badge.dart';
import 'widgets/customized_size3d_box.dart';

const int paso = 6;

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: switch (paso) {
      1 => _paso1(),
      2 => Scaffold(
        body: ListView(
          children: [
            TarjetaLog(
              nivel: 'EXPULSION',
              componente: 'Lionel Messi',
              mensaje: 'Tarjeta roja directa por falta grave en el área penal',
              timestamp: DateTime.now(),
            ),
            TarjetaLog(
              nivel: 'AMONESTACION',
              componente: 'Cristiano Ronaldo',
              mensaje: 'Tarjeta amarilla por protestar decisión arbitral',
              timestamp: DateTime.now().subtract(const Duration(minutes: 2)),
            ),
            TarjetaLog(
              nivel: 'GOL',
              componente: 'Neymar Jr',
              mensaje: 'Golazo de tiro libre directo',
              timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
            ),
            TarjetaLog(
              nivel: 'JUGADA',
              componente: 'Kylian Mbappé',
              mensaje: 'Asistencia clave desde la banda izquierda para gol',
              timestamp: DateTime.now().subtract(const Duration(minutes: 8)),
            ),
          ],
        ),
      ),
      3 => const Scaffold(
        body: Column(
          children: [
            FilaEstado(
              nombre: 'Estadio Santiago Bernabéu',
              detalle: 'Madrid · 85k espectadores',
              activo: true,
            ),
            Divider(height: 1),
            FilaEstado(
              nombre: 'Estadio Camp Nou',
              detalle: 'Barcelona · 99k espectadores',
              activo: true,
            ),
            Divider(height: 1),
            FilaEstado(
              nombre: 'Estadio San Siro',
              detalle: 'Milán · 75k espectadores · sin habilitar',
              activo: false,
            ),
            Divider(height: 1),
            FilaEstado(
              nombre: 'Estadio Allianz Arena de Múnich',
              detalle: 'Múnich · 70k espectadores',
              activo: true,
            ),
          ],
        ),
      ),
      4 => const Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AvatarBadge(nombre: 'Messi', alertas: 2, activo: true),
              SizedBox(width: 24),
              AvatarBadge(nombre: 'CR7', alertas: 0, activo: true),
              SizedBox(width: 24),
              AvatarBadge(nombre: 'Neymar', alertas: 0, activo: false),
              SizedBox(width: 24),
              AvatarBadge(nombre: 'Mbappé', alertas: 15, activo: true),
              AvatarBadge(nombre: 'Haaland', alertas: 15, activo: true),
            ],
          ),
        ),
      ),
      5 => Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('SizedBox', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('Primer jugador entrenando'),
          const SizedBox(height: 32),
          const Text('Segundo jugador (después de 32px de distancia)'),

          const Divider(height: 32),

          const Text('Padding', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Container(
            color: Colors.indigo.shade50,
            child: const Padding(
              padding: EdgeInsets.only(left: 24),
              child:   Text('Nombre de jugador con sangría izquierda'),
            ),
          ),

          const Divider(height: 32),

          const Text('Align', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.sports, color: Colors.indigo),
          ),

          const Divider(height: 32),

          const Text('Wrap', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Wrap(
            spacing:    8,
            runSpacing: 8,
            children: ['Fútbol', 'LaLiga', 'Champions', 'Copa del Rey', 'Fichajes', 'Categorías', 'Plantilla']
                .map((t) => Chip(label: Text(t)))
                .toList(),
          ),
        ],
      ),
    ),
    6 => const Scaffold(
      body: Customize(
        nombre: 'Estadio de Entrenamiento',
        detalle: 'Cancha 1 · Césped natural',
        activo: true,
      ),
    ),
      _ => Scaffold(
        body: Center(child: Text('Paso $paso: crea el widget primero')),
      ),
    },
  ),
);

Widget _paso1() => Scaffold(
  body: Center(
    child: Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(0),
        border: Border(left: BorderSide(color: Colors.indigo, width: 4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: const Text(
        'Jugador Leo Messi',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  ),
);
