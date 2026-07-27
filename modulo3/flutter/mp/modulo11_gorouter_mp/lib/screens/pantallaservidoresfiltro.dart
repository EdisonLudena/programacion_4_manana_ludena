import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/servidor_ssh.dart';

class PantallaServidoresFiltro extends StatelessWidget {
  final bool soloSSL;
  const PantallaServidoresFiltro({super.key, this.soloSSL = false});

  @override
  Widget build(BuildContext context) {
    final filtrados = soloSSL
        ? servidoresSimulados.where((s) => s.ssl).toList()
        : servidoresSimulados;

    return Scaffold(
      appBar: AppBar(
        title:   Text('Jugadores${soloSSL ? ' (Titulares)' : ''}'),
        actions: [
          IconButton(
            icon:    Icon(soloSSL ? Icons.star : Icons.star_border),
            tooltip: soloSSL ? 'Ver todos' : 'Solo Titulares',
            onPressed: () => soloSSL
                ? context.go('/servidores')
                : context.go('/servidores?soloSSL=true'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount:   filtrados.length,
        itemBuilder: (context, i) {
          final s = filtrados[i];
          return ListTile(
            leading: Icon(Icons.person, color: s.ssl ? Colors.green : Colors.grey),
            title:   Text(s.nombre),
            subtitle: Text(s.ip),
            onTap: () => context.push(
              '/servidores/${s.id}',
              extra: s,
            ),
          );
        },
      ),
    );
  }
}