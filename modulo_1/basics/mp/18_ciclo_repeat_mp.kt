fun main() {
    println("Módulo 3: Tests de Rendimiento - Evaluación de Capacidad Aeróbica")
    println("Cuántas tomas de rendimiento desea registrar para el jugador:")
    val tomas = readLine()?.toIntOrNull() ?: 0
    var totalRendimiento = 0

    repeat(tomas) { i ->
        println("Evaluación técnica ${i + 1} (Puntaje de 1 a 100):")
        val puntaje = readLine()?.toIntOrNull() ?: 0
        totalRendimiento += puntaje
    }

    val promedioFinal = if (tomas > 0) totalRendimiento / tomas else 0
    println("Promedio de rendimiento técnico: $promedioFinal%")
    println("Estatus para el Módulo de Scouting: ${
        when {
            promedioFinal < 40 -> "Nivel Iniciación"
            promedioFinal <= 75 -> "Nivel Competitivo"
            else -> "Nivel Élite"
        }
    }")
}