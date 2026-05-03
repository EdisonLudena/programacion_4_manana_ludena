fun main() {
    println("Módulo de Salud - Protocolo de Disponibilidad de Jugadores")
    
    println("Nombre del Jugador")
    val nombreJugador = readLine()?.trim()?.lowercase() ?: "Sin identificación"
    println("Estado de Salud (LESION_GRAVE/REHABILITACION/RECALIBRACION/ALTA)")
    val estadoSalud = readLine()?.trim()?.uppercase() ?: ""
    
    when(estadoSalud){
        "LESION_GRAVE" -> {
            println("ALERTA MÉDICA: Jugador: $nombreJugador")
            println("Notificar al cuerpo técnico y fisioterapeuta")
            println("Actualizar historial en 'lesiones_registro'")
        }
        
        "REHABILITACION" -> {
            println("EN RECUPERACIÓN: Jugador: $nombreJugador")
            println("Asignar ejercicios en 'sesiones_rehabilitacion'")
            println("Restringir contacto físico en entrenamiento")
        }
        
        "RECALIBRACION" -> println("En observación: jugador: $nombreJugador")
        "ALTA" -> println("Alta médica: jugador: $nombreJugador puede unirse al grupo")
        else -> println("Estado de salud no reconocido")
    }
}