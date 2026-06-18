import 'package:flutter/material.dart';

class Etiqueta extends StatelessWidget {
  final String texto;
  final Color color;
  final double fontSize; // parámetro con valor por defecto
  final bool relleno; // controla si el fondo tiene opacidad alta
  final IconData? icono;

  const Etiqueta({
    super.key,
    required this.texto,
    required this.color,
    this.fontSize = 13, // opcional — no necesita required
    this.relleno = false,
    this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(relleno ? 0.3 : 0.1),
            color.withOpacity(relleno ? 0.5 : 0.25),
          ],
        ),
        border: Border(bottom: BorderSide(color: color, width: 2)),
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,

        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icono != null) ...[
            Icon(icono, size: fontSize, color: color),
            const SizedBox(width: 6),
          ],
          Text(
            texto,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w600,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
