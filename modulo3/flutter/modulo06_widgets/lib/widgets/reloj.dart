import 'dart:async';
import 'package:flutter/material.dart';

class Reloj extends StatefulWidget {
  const Reloj({super.key});

  @override
  State<Reloj> createState() => _RelojState();
}

class _RelojState extends State<Reloj> {
  late Timer _timer;      // late — se asigna en initState, antes no existe
  int  _segundos = 0;
  bool _pausado  = false;
  int vueltas = 0;
  
  // 1. Lista para almacenar los segundos de cada vuelta
  final List<int> _tiemposVuelta = [];

  @override
  void initState() {
    super.initState();    // ← siempre primero
    _iniciarTimer();
  }

  void _iniciarTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      if (!mounted) return;   // ← protege setState en callbacks
      setState(() => _segundos++);
    });
  }

  void _togglePausa() {
    setState(() {
      _pausado = !_pausado;
      if (_pausado) {
        _timer.cancel();      // pausa: cancela el timer actual
      } else {
        _iniciarTimer();      // reanuda: crea un timer nuevo
      }
    });
  }

  // 2. Método para agregar el tiempo actual a la lista
  void _toggleVuelta() {
    setState(() {
      _tiemposVuelta.add(_segundos);
    });
  }

  @override
  void dispose() {
    _timer.cancel();          // ← Descomentado: SIEMPRE liberar en dispose
    super.dispose();          // ← siempre al final
  }

  String _formatearSegundos(int totalSegundos) {
    final h = totalSegundos ~/ 3600;
    final m = (totalSegundos % 3600) ~/ 60;
    final s = totalSegundos % 60;
    return '$h:${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  String get _formato => _formatearSegundos(_segundos);

  // Color cambia según el tiempo transcurrido
  Color get _colorTiempo {
    if (_segundos > 120) return Colors.deepPurple;
    if (_segundos > 60) return Colors.red;
    if (_segundos > 30) return Colors.orange;
    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _formato,
          style: TextStyle(
            fontSize:   40,
            fontFamily: 'monospace',
            fontWeight: FontWeight.bold,
            color:      _colorTiempo,         // cambia automáticamente con el tiempo
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FilledButton.icon(
              onPressed: _togglePausa,
              icon:  Icon(_pausado ? Icons.play_arrow : Icons.pause),
              label: Text(_pausado ? 'Reanudar' : 'Pausar'),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () => setState(() {
                _timer.cancel();
                _segundos = 0;
                _pausado  = false;
                _tiemposVuelta.clear(); // Limpiamos las vueltas al reiniciar
                _iniciarTimer();
              }),
              child: const Text('Reiniciar'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          _pausado ? 'Pausado' : 'Corriendo',
          style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
        ),
        const SizedBox(height: 8),
        FilledButton.icon(
          onPressed: _toggleVuelta,
          icon: const Icon(Icons.flag),
          label: const Text('Vuelta'),
        ),
        const SizedBox(height: 16),
        
        // 3. Sección para presentar la lista de vueltas dinámicamente
        // Usamos Expanded + ListView.builder para que la lista ocupe el espacio disponible sin romper el diseño
        if (_tiemposVuelta.isNotEmpty) ...[
          const Text('Tiempos de vuelta:', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          SizedBox(
            height: 150, // Limitamos la altura para que no desborde la pantalla
            width: 250,
            child: ListView.builder(
              itemCount: _tiemposVuelta.length,
              itemBuilder: (context, index) {
                final tiempoVuelta = _tiemposVuelta[index];
                return ListTile(
                  dense: true,
                  title: Center(
                    child: Text(
                      'Vuelta ${index + 1}: ${_formatearSegundos(tiempoVuelta)}',
                      style: const TextStyle(fontFamily: 'monospace'),
                    ),
                  ),
                );
              },
            ),
          ),
        ]
      ],
    );
  }
}