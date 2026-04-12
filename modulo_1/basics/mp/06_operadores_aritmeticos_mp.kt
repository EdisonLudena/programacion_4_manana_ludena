fun main() {
    println("--- Análisis de Estadísticas de Fútbol ---")
    val golesLocal = 10
    val golesVisitante = 2
    
    println("Cálculo de Resultados")
    println("Goles Totales ($golesLocal + $golesVisitante): ${golesLocal + golesVisitante}")
    println("Diferencia de Goles ($golesLocal - $golesVisitante): ${golesLocal - golesVisitante}")
    
    println("Proyección Temporada (10 partidos)")
    println("Goles esperados ($golesLocal * 10): ${golesLocal * 10}")
    
    println("Promedio de Goles por tiempo")
    println("Goles / 2 tiempos ($golesLocal / 2): ${golesLocal / 2}")
    
    println("Cálculo de Grupos (Módulo)")
    println("Sobrante de jugadores ($golesLocal % $golesVisitante): ${golesLocal % golesVisitante}")
    
    
    // Ingreso de datos para cálculo dinámico
    println("Ingrese los goles de la primera vuelta:")
    val num1 = readLine()!!.toInt()
    println("Ingrese los goles de la segunda vuelta:")
    val num2 = readLine()!!.toInt()
    
    println("Suma Total: ${num1 + num2}")
    println("Diferencia: ${num1 - num2}")
    println("Multiplicación (Factor de impacto): ${num1 * num2}")
    println("División (Rendimiento): ${num1 / num2}")
    println("Módulo (Resto): ${num1 % num2}")
    
    
    println("Actualización de Tabla de Posiciones")
    var puntos = 10
    puntos += 3 // Sumar victoria
    println("Puntos tras ganar (+=3): $puntos")
    
    puntos -= 1 // Penalización o ajuste
    println("Puntos tras ajuste (-=1): $puntos")
    
    var presupuestoMillones = 5
    presupuestoMillones *= 2 // Duplicar presupuesto por patrocinios
    println("Presupuesto duplicado (*=2): $presupuestoMillones")
    
    presupuestoMillones /= 2 // Repartir presupuesto entre ligas
    println("Presupuesto repartido (/=2): $presupuestoMillones")
    
    presupuestoMillones %= 3 // Ajuste de impuestos
    println("Residuo de presupuesto (%=3): $presupuestoMillones")
    
    
    // Incremento o Decremento de minutos o tarjetas
    var tarjetasAmarillas = 1
    tarjetasAmarillas++
    println("Nueva tarjeta registrada (++): $tarjetasAmarillas")
    
    var minutosRestantes = 90
    minutosRestantes--
    println("Minuto de juego (--): $minutosRestantes")
}