import 'package:flutter/material.dart';

class CatalogoBasicos extends StatelessWidget {
  const CatalogoBasicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets básicos de Fútbol')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Entrenamiento: Activo',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green,
              letterSpacing: 0.5,
              fontStyle: FontStyle.normal,
              decoration: TextDecoration.underline,
              shadows: [
                Shadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          SizedBox(
            width: double.infinity,
            child: Text(
              'Delantero Estrella → suspendido temporalmente',
              textAlign:
                  TextAlign.right,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
          const SizedBox(height: 8),

          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Estado: ',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                TextSpan(
                  text: 'LESIONADO',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' — última revisión médica hace 5 min',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          const SelectableText(
            'Messi: Dorsal 10',
            style: TextStyle(fontFamily: 'monospace', fontSize: 14),
          ),
          const Divider(height: 32),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.sports_soccer, size: 80, color: Colors.green),
              Icon(Icons.warning, size: 15, color: Colors.red),
              Icon(Icons.flag, size: 40, color: Colors.orange),
              Icon(Icons.timer, size: 40, color: Colors.indigo),
              Icon(Icons.shield, size: 40, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 8),
          const Icon(
            Icons.sports,
            size: 24,
            color: Colors.blueGrey,
            semanticLabel: 'Árbitro / Silbato',
          ),
          const Divider(height: 32),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Botón Elevado'),
              ),
              FilledButton(onPressed: () {}, child: const Text('Botón Relleno')),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Botón Delineado'),
              ),
              TextButton(onPressed: () {}, child: const Text('Botón Texto')),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Deshabilitado'),
              ),
            ],
          ),
          const SizedBox(height: 12),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.refresh, size: 18),
                label: const Text('Reiniciar Entrenamiento'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.stop, size: 18),
                label: const Text('Detener Partido'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings_applications),
                color: Colors.indigo,
                iconSize: 28,
                tooltip: 'Configurar plantilla',
              ),
            ],
          ),
          const SizedBox(height: 12),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red.shade600,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
              shape: const StadiumBorder(),
              elevation: 0,
              minimumSize: const Size(
                double.infinity,
                0,
              ),
            ),
            child: const Text(
              'Rescindir Contrato',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(height: 32),

          Card(
            elevation: 0,
            margin: const EdgeInsets.only(bottom: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: Colors.red.shade50,
            child: ListTile(
              leading: const Icon(Icons.sports_soccer, color: Colors.indigo),
              title: const Text('Real Madrid CF'),
              subtitle: const Text('Estadio Santiago Bernabéu · 85k espec.'),
              trailing: const Icon(Icons.circle, color: Colors.green, size: 12),
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              isThreeLine: true,
            ),
          ),
          Card(
            elevation: 11,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red.shade100,
                child: const Icon(Icons.cancel, color: Colors.red, size: 20),
              ),
              title: const Text('Neymar Jr'),
              subtitle: const Text(
                'lesionado · recuperación estimada 2 semanas - sin entrenar en cancha con el resto del plantel principal',
              ),
              trailing: TextButton(onPressed: () {}, child: const Text('Ver')),
            ),
          ),
          const Divider(height: 32),

          Card(
            child: SwitchListTile(
              value: true,
              onChanged: (_) {},
              title: const Text('Periodo de Fichajes Abierto'),
            ),
          ),

          const Divider(height: 32),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              const Chip(
                label: Text('Delanteros'),
                deleteIcon: Icon(Icons.close, size: 16),
              ),

              const Chip(
                avatar: Icon(Icons.check, size: 16, color: Colors.white),
                label: Text('LaLiga'),
                backgroundColor: Colors.blue,
                labelStyle: TextStyle(color: Colors.white, fontSize: 12),
              ),
              FilterChip(
                label: const Text('Copa de Campeones'),
                selected: false,
                onSelected: (_) {},
              ),
              ActionChip(
                label: const Text('Ver Contratos'),
                avatar: const Icon(Icons.open_in_new, size: 16),
                onPressed: () {},
              ),
              InputChip(
                label: const Text('Buscar Jugador'),
                avatar: const Icon(Icons.search, size: 16),
                selected: true,
                onDeleted: () {},
              ),
            ],
          ),
          const Divider(height: 32),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SizedBox(
                width: 48,
                height: 48,
                
                child: CircularProgressIndicator(
                  backgroundColor: Colors.blueGrey,
                ),
              ),
              SizedBox(
                width: 48,
                height: 48,
                child:CircularProgressIndicator(
                  value: 0.7,
                  color: Colors.green,
                  strokeWidth: 6,
                ),
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: CircularProgressIndicator(
                  value: 0.3,
                  color: Colors.red,
                  strokeWidth: 3,
                  strokeCap: StrokeCap.round,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          const LinearProgressIndicator(),
          const SizedBox(height: 8),
          const LinearProgressIndicator(
            value: 0.6,
            color: Colors.indigo,
          ),
          const SizedBox(height: 8),
          const LinearProgressIndicator(
            value: null,
            color: Colors.green,
            minHeight: 12,
          ),
          const Divider(height: 32),
        ],
      ),
    );
  }
}
