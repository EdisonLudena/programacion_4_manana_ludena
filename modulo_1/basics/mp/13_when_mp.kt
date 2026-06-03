fun main() {
    println("--- SaaS de Fútbol: Módulo de Posiciones ---")
    println("Controles de Flujo When")
    
    println("Escriba el código de la posición del jugador (1-6):")
    val codigo = readLine()?.toIntOrNull() ?: 0
    
    val posicion = when(codigo) {
        1 -> "Portero"
        2 -> "Defensa Central"
        3 -> "Lateral Derecho/Izquierdo"
        4 -> "Mediocentro Defensivo"
        5 -> "Volante Creativo"
        6 -> "Delantero Centro"
        else -> "Posición no registrada en el sistema de EcuMetrics"
    }
    
    println("Posición asignada: $posicion")
}