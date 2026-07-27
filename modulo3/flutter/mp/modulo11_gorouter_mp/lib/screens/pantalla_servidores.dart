import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/servidor_ssh.dart';

class PantallaServidores extends StatelessWidget {
  const PantallaServidores({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final servidores = servidoresSimulados;
    
    return Scaffold(
      appBar: AppBar(
        title:           const Text('Jugadores'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
      ),
      
      body: ListView.builder(
        itemCount:   servidores.length,
        itemBuilder: (context, i) => ListTile(
          leading: const Icon(Icons.person),
          title:   Text(servidores[i].nombre),
          onTap: () {
            context.push('/servidores/${servidores[i].id}', extra: servidores[i]);
          },
        ),
      ),
    );
  }
}