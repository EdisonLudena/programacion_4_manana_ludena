fun main() {
    println("--- Análisis de Jugadores ---")
    println("Condicional if")
    
    println("Incluir efectividad de pases (0.0 a 100.0): ")
    // Usamos la misma estructura: captura el dato o usa un valor por defecto
    val efectividad = readLine()?.toDoubleOrNull() ?: 75.0
    
    // Primera condición: Rendimiento destacado
    if (efectividad >= 85.0) {
        println("Jugador élite detectado: Considerar para el equipo ideal")
    }
    
    // Segunda condición: Rendimiento crítico
    if (efectividad >= 95.0) {
        println("Rendimiento excepcional: ¡Nivel de clase mundial!")
    }
    
    println("Efectividad registrada: $efectividad %") 
}