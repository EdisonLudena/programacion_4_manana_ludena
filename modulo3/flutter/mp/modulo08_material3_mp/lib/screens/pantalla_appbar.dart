import 'package:flutter/material.dart';

class PantallaAppBar extends StatelessWidget {
  const PantallaAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title:           const Text('Jugadores'),
            pinned:          true,
            backgroundColor: cs.primaryContainer,
            foregroundColor: cs.onPrimaryContainer,
            actions: [
              IconButton(
                icon:      const Icon(Icons.filter_list),
                onPressed: () {},
                tooltip:   'Filtrar',
              ),
              IconButton(
                icon:      const Icon(Icons.search),
                onPressed: () {},
                tooltip:   'Buscar',
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: cs.primaryContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 56),
                    Icon(Icons.sports_soccer, size: 48, color: cs.onPrimaryContainer),
                    const SizedBox(height: 8),
                    Text(
                      '8 jugadores convocados',
                      style: TextStyle(color: cs.onPrimaryContainer),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Card(
                  child: ListTile(
                    leading:  Icon(Icons.person, color: cs.primary),
                    title:    Text('Jugador Estrella #0${i + 1}'),
                    subtitle: Text('Dorsal ${i + 1} · Habilitado'),
                    trailing: Chip(
                      label:           const Text('Apto'),
                      backgroundColor: cs.primaryContainer,
                      labelStyle:      TextStyle(color: cs.onPrimaryContainer),
                    ),
                    onTap: () {},
                  ),
                ),
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}