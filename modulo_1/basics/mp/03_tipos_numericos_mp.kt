fun main() {
    val edadJugador: Byte = 22
    println("Edad del jugador (Byte): $edadJugador")
    
    val capacidadEstadio: Short = 25_000
    println("Capacidad del estadio (Short): $capacidadEstadio")
    
    val idTransaccionSaaS: Int = 1_500_750 
    println("ID de registro (Int): $idTransaccionSaaS")
    
    val valorMercadoTotal: Long = 7_500_000_000L
    println("Valor total de la liga (Long): $valorMercadoTotal")
    
    println("Estadísticas decimales")
    val promedioGoles: Float = 1.25f
    println("Promedio de goles por partido (Float): $promedioGoles")
    
    val precisionPases: Double = 88.92546321
    println("Precisión exacta de pases (Double): $precisionPases")

    val equipo = "EcuMetrics FC"
    val ranking = 1
    
    println("Equipo: $equipo")
    val equipoTipo = equipo::class.simpleName
    println("Tipo inferido equipo: ${equipoTipo}")
    
    println("Ranking: $ranking")
    val rankingTipo = ranking::class.simpleName
    println("Tipo inferido ranking: ${rankingTipo}")
}