import 'package:flutter/material.dart';

class CatalogoBotones extends StatelessWidget {
  const CatalogoBotones({super.key});

  @override
  Widget build(BuildContext context) {
    final cs   = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title:           const Text('Botones Material 3'),
        backgroundColor: cs.surfaceContainerHighest,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Variantes — de mayor a menor énfasis',
              style: text.labelLarge?.copyWith(color: cs.primary)),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () {},
            child: const Text('FilledButton — acción principal'),
          ),
          const SizedBox(height: 8),
          FilledButton.tonal(
            onPressed: () {},
            child: const Text('FilledButton.tonal — acción secundaria'),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            child: const Text('ElevatedButton — acción con sombra'),
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            onPressed: () {},
            child: const Text('OutlinedButton — acción con borde'),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {},
            child: const Text('TextButton — acción mínima'),
          ),

          const Divider(height: 32),

          Text('Con ícono',
              style: text.labelLarge?.copyWith(color: cs.primary)),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: () {},
            icon:  const Icon(Icons.send),
            label: const Text('Enviar alineación'),
          ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: () {},
            icon:  const Icon(Icons.download),
            label: const Text('Exportar ficha técnica'),
          ),
          const SizedBox(height: 8),
          TextButton.icon(
            onPressed: () {},
            icon:  const Icon(Icons.open_in_new),
            label: const Text('Ver reglamento de liga'),
          ),

          const Divider(height: 32),

          Text('Estados y personalización',
              style: text.labelLarge?.copyWith(color: cs.primary)),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: null,
            child: const Text('Jugador no disponible'),
          ),
          const SizedBox(height: 8),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: cs.error,
              foregroundColor: cs.onError,
              minimumSize:     const Size(double.infinity, 48),
            ),
            onPressed: () {},
            child: const Text('Rescindir contrato'),
          ),
          const SizedBox(height: 8),
          Row(children: [
            Expanded(
              child: OutlinedButton(onPressed: () {}, child: const Text('Habilitar')),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: FilledButton(onPressed: () {}, child: const Text('Suspender')),
            ),
          ]),
        ],
      ),
    );
  }
}