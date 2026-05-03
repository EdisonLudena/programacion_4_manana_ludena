fun main() {
    println("Módulo de Scouting: Valoración Económica y Categorización")
    
    print("Edad del prospecto (Módulo 2): ")
    val edadJugador = readLine()?.toIntOrNull() ?: 0
    
    print("¿Es jugador de Élite/Pro? (s/n): ")
    val esElite = readLine()?.trim()?.lowercase() == "s"
    
    val planSuscripcion = if (esElite) {
        println("Plan del Scout (BASICO/PREMIUM/PRO):")
        readLine()?.trim()?.uppercase() ?: ""
    } else ""

    val cuotaFichaje = when {
        !esElite && edadJugador < 18 -> 0.0
        !esElite && edadJugador >= 30 -> 250.0
        !esElite -> 500.0
        planSuscripcion == "BASICO" -> 1500.0
        planSuscripcion == "PREMIUM" -> 3000.0
        planSuscripcion == "PRO" -> 0.0
        else -> 1000.0
    }

    println("Valoración económica sugerida: $${"%.2f".format(cuotaFichaje)}")
}