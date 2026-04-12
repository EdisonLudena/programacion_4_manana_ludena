fun main() {
    println("--- SaaS de Fútbol: Clasificación de Rendimiento ---")
    println("Condicional If - Múltiples condiciones")
    
    println("Ingrese la cantidad de goles del jugador en la temporada:")
    val goles = readLine()?.toIntOrNull() ?: 0
    val categoria = if (goles == 0) {
        "Sin registros (Banca)"
    } else if (goles < 5) {
        "Rendimiento Inicial"
    } else if (goles < 10) {
        "Rendimiento Regular"
    } else if (goles < 15) {
        "Goleador del Equipo"
    } else if (goles < 25) {
        "Elite de la Liga"
    } else {
        "Leyenda / Bota de Oro"
    }
    
    println("Categoría asignada: $categoria")
}