import 'package:flutter/material.dart';

class FormularioServidor extends StatefulWidget {
  final void Function(Map<String, String> datos) onGuardar;
  const FormularioServidor({super.key, required this.onGuardar});

  @override
  State<FormularioServidor> createState() => _FormularioServidorState();
}

class _FormularioServidorState extends State<FormularioServidor> {
  final _formKey  = GlobalKey<FormState>();

  final _ctrlNombre  = TextEditingController();
  final _ctrlIp      = TextEditingController();
  final _ctrlMAC      = TextEditingController();
  final _ctrlPuerto  = TextEditingController(text: '10');
  final _ctrlUsuario = TextEditingController(text: 'Delantero');

  final _focusIp      = FocusNode();
  final _focusMAC      = FocusNode();
  final _focusPuerto  = FocusNode();
  final _focusUsuario = FocusNode();

  String _so  = 'FC Barcelona';
  String _se = 'Primera División';
  bool   _ssl = true;

  static final _regexIp = RegExp(r'^(\d{1,3}\.){3}\d{1,3}$');

  @override
  void dispose() {
    _ctrlNombre.dispose();
    _ctrlIp.dispose();
    _ctrlMAC.dispose();
    _ctrlPuerto.dispose();
    _ctrlUsuario.dispose();
    _focusIp.dispose();
    _focusMAC.dispose();
    _focusPuerto.dispose();
    _focusUsuario.dispose();
    super.dispose();
  }

  void _guardar() {
    if (!_formKey.currentState!.validate()) return;

    widget.onGuardar({
      'nombre':  _ctrlNombre.text,
      'ip':      _ctrlIp.text,
      'puerto':  _ctrlPuerto.text,
      'usuario': _ctrlUsuario.text,
      'so':      _so,
      'se':      _se,
      'ssl':     _ssl.toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller:      _ctrlNombre,
            decoration:      const InputDecoration(
              labelText:  'Nombre del jugador',
              hintText:   'Lionel Messi',
              prefixIcon: Icon(Icons.person),
              border:     OutlineInputBorder(),
            ),
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => _focusIp.requestFocus(),
            validator: (v) {
              if (v == null || v.trim().isEmpty) return 'El nombre es obligatorio';
              if (v.length < 3)                  return 'Mínimo 3 caracteres';
              if (!RegExp(r'^[a-zA-Z0-9\s\-\_]+$').hasMatch(v))
                return 'Solo letras, números, espacios y guiones';
              return null;
            },
          ),
          const SizedBox(height: 12),

          TextFormField(
            controller:      _ctrlIp,
            focusNode:       _focusIp,
            decoration:      const InputDecoration(
              labelText:  'IP de Vestuario',
              hintText:   '192.168.1.100',
              prefixIcon: Icon(Icons.location_on),
              border:     OutlineInputBorder(),
            ),
            keyboardType:    TextInputType.number,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => _focusPuerto.requestFocus(),
            validator: (v) {
              if (v == null || v.isEmpty) return 'La IP es obligatoria';
              if (!_regexIp.hasMatch(v))  return 'Formato IPv4 inválido (ej. 192.168.1.10)';
              final octetos = v.split('.').map(int.parse).toList();
              if (octetos.any((o) => o > 255)) return 'Octeto fuera de rango (0–255)';
              return null;
            },
          ),
          const SizedBox(height: 12),

          TextFormField(
            controller:      _ctrlMAC,
            focusNode:       _focusMAC,
            decoration:      const InputDecoration(
              labelText:  'IP de Vestuario Auxiliar',
              hintText:   '192.168.1.101',
              prefixIcon: Icon(Icons.location_on),
              border:     OutlineInputBorder(),
            ),
            keyboardType:    TextInputType.number,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => _focusPuerto.requestFocus(),
            validator: (v) {
              if (v == null || v.isEmpty) return 'La IP es obligatoria';
              if (!_regexIp.hasMatch(v))  return 'Formato IPv4 inválido (ej. 192.168.1.10)';
              final octetos = v.split('.').map(int.parse).toList();
              if (octetos.any((o) => o > 255)) return 'Octeto fuera de rango (0–255)';
              return null;
            },
          ),
          const SizedBox(height: 12),

          TextFormField(
            controller:      _ctrlPuerto,
            focusNode:       _focusPuerto,
            decoration:      const InputDecoration(
              labelText:  'Dorsal',
              prefixIcon: Icon(Icons.tag),
              border:     OutlineInputBorder(),
            ),
            keyboardType:    TextInputType.number,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => _focusUsuario.requestFocus(),
            validator: (v) {
              final dorsal = int.tryParse(v ?? '');
              if (dorsal == null)            return 'El dorsal debe ser un número';
              if (dorsal < 1 || dorsal > 99) return 'Dorsal entre 1 y 99';
              return null;
            },
          ),
          const SizedBox(height: 12),

          TextFormField(
            controller:      _ctrlUsuario,
            focusNode:       _focusUsuario,
            decoration:      const InputDecoration(
              labelText:  'Posición',
              prefixIcon: Icon(Icons.sports),
              border:     OutlineInputBorder(),
            ),
            textInputAction: TextInputAction.next,
            validator: (v) =>
                v == null || v.trim().isEmpty ? 'La posición es obligatoria' : null,
          ),
          const SizedBox(height: 12),

          DropdownButtonFormField<String>(
            value:      _so,
            decoration: const InputDecoration(
              labelText:  'Club de Procedencia',
              prefixIcon: Icon(Icons.business),
              border:     OutlineInputBorder(),
            ),
            items: [
              'FC Barcelona', 'Real Madrid CF', 'Bayern Múnich',
              'Manchester City', 'PSG',
            ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
            onChanged: (v) => setState(() => _so = v!),
          ),
          const SizedBox(height: 8),

          DropdownButtonFormField<String>(
            value:      _se,
            decoration: const InputDecoration(
              labelText:  'Categoría del Jugador',
              prefixIcon: Icon(Icons.category),
              border:     OutlineInputBorder(),
            ),
            items: [
              'Primera División', 'Segunda División', 'Reserva',
              'Fuerzas Básicas',
            ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
            onChanged: (v) => setState(() => _se = v!),
          ),
          const SizedBox(height: 8),

          SwitchListTile(
            title:     const Text('Jugador Titular'),
            subtitle:  const Text('Alineado en el once inicial'),
            value:     _ssl,
            onChanged: (v) => setState(() => _ssl = v),
            secondary: const Icon(Icons.star),
          ),
          const SizedBox(height: 16),

          Row(children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () => _formKey.currentState?.reset(),
                child: const Text('Limpiar'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: FilledButton.icon(
                onPressed: _guardar,
                icon:  const Icon(Icons.save),
                label: const Text('Guardar jugador'),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}