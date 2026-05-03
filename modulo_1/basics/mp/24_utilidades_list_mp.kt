fun main() {
    println("Módulo 4 y 5: Análisis de Rendimiento y Estadísticas")
    
    val golesPorPartido = listOf(1, 2, 0, 3, 1, 4, 0, 2, 1, 2)
    println("Registro de goles en los últimos 10 encuentros: $golesPorPartido")
    
    val proyeccionGolesDobles = golesPorPartido.map { it * 2 }
    println("Proyección de goles (duplicar efectividad): $proyeccionGolesDobles")
    
    val etiquetasGoles = golesPorPartido.map { "G-$it" }
    println("ID de eventos registrados: $etiquetasGoles")
    
    println("Filtrado de Métricas")
    val partidosConGoles = golesPorPartido.filter { it > 0 }
    println("Partidos donde se marcó: $partidosConGoles")
    
    val altoRendimiento = golesPorPartido.filter { it >= 3 }
    println("Partidos de alta eficiencia (Goles >= 3): $altoRendimiento")
    
    val partidosClave = golesPorPartido.filter { it > 1 && it < 4 }
    println("Partidos con rendimiento equilibrado: $partidosClave")
    
    val partidosSinGoles = golesPorPartido.filterNot { it > 0 }
    println("Partidos con arco en cero (rival): $partidosSinGoles")
    
    val reporteMixto = listOf(3, "Amarilla", 1, "Roja", true, 45)
    val soloSanciones = reporteMixto.filterIsInstance<String>()
    println("Extracción de sanciones textuales: $soloSanciones")
    
    println("Cálculo de Totales (Reduce)")
    val golesTemporada = listOf(1, 2, 3, 4, 5)
    val sumaTotalGoles = golesTemporada.reduce { acc, g -> acc + g }
    println("Suma total de goles acumulados: $sumaTotalGoles")
    
    val factorMultiplicador = golesTemporada.reduce { acc, g -> acc * g }
    println("Factor de progresión ofensiva: $factorMultiplicador")
    
    println("Cálculo con Base (Fold)")
    val historialGolesAnterior = 100
    val totalHistorico = golesTemporada.fold(historialGolesAnterior) { acc, g -> acc + g }
    println("Goles históricos (Base 100 + actual): $totalHistorico")
    
    val proyeccionConBase = golesTemporada.fold(1) { acc, g -> acc * g }
    println("Cálculo de ranking acumulado: $proyeccionConBase")
    
    println("Ordenación de Estadísticas")
    println("Menor a mayor efectividad: ${golesPorPartido.sorted()}")
    println("Mayor a menor efectividad: ${golesPorPartido.sortedDescending()}")
    println("Orden personalizado (negativo): ${golesPorPartido.sortedBy { -it }}")
    
    println("Agregación de Datos (Dashboard)")
    println("Total goles: ${golesPorPartido.sum()}")
    println("Promedio de gol por partido: ${golesPorPartido.average()}")
    println("Mínimo de goles en un juego: ${golesPorPartido.minOrNull()}")
    println("Máximo de goles en un juego: ${golesPorPartido.maxOrNull()}")
    println("Partidos con más de 2 goles: ${golesPorPartido.count { it > 2 }}")
    
    println("Búsqueda de Eventos Específicos")
    println("Primer partido con más de 2 goles: ${golesPorPartido.find { it > 2 }}")
    println("Último partido con más de 2 goles: ${golesPorPartido.findLast { it > 2 }}")
    println("¿Hubo algún partido con goles?: ${golesPorPartido.any { it > 0 }}")
    println("¿Se marcó en todos los partidos?: ${golesPorPartido.all { it > 0 }}")
    println("¿Ningún partido superó los 10 goles?: ${golesPorPartido.none { it > 10 }}")
}