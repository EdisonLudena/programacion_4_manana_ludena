fun main() {
    println("--- SaaS de Fútbol: Módulo de Contrataciones ---")
    println("Condicional If - Anidado")
    
    println("¿El jugador tiene contrato vigente? s/n: ")
    val tieneContrato = readLine()?.trim()?.lowercase() == "s"
    
    println("Goles anotados en la última temporada: ")
    val goles = readLine()?.toIntOrNull() ?: 0
    
    if (tieneContrato) {
        println("Estado: Jugador con contrato activo")
        // Anidación para evaluar desempeño del jugador con contrato
        if (goles < 5) {
            println("Acción sugerida: Evaluar préstamo a otro club")
        } else if (goles > 15) {
            println("Acción sugerida: Negociar renovación (Jugador clave)")
        } else {
            println("Acción sugerida: Mantener en la plantilla actual")
        }
    } else {
        println("Estado: Jugador Agente Libre")
        // Anidación con operador OR para evaluar interés de compra
        if (goles < 5 || goles > 25) {
            println("Alerta: Perfil de interés extremo (Evaluación prioritaria)")
        } else {
            println("Estado: Perfil en seguimiento rutinario")
        }
    }
}