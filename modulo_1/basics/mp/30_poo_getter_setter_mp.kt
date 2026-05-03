class RendimientoJugador(porcentajeExito: Double) {

    var porcentajeExito: Double = porcentajeExito
        set(value) {
            require(value in 0.0..100.0) { "El porcentaje debe estar entre 0 y 100" }
            field = value
        }

    val factorEfectividad: Double
        get() = porcentajeExito / 100.0

    val puntosProyectados: Double
        get() = porcentajeExito * 1.5

    val categoriaRendimiento: String
        get() = when {
            porcentajeExito < 30  -> "Rendimiento Bajo"
            porcentajeExito < 50  -> "Rendimiento Regular"
            porcentajeExito < 75  -> "Rendimiento Bueno"
            porcentajeExito < 90  -> "Rendimiento Destacado"
            else                  -> "Rendimiento Élite"
        }
}

fun main() {
    val estadistica = RendimientoJugador(82.0)
    println("Éxito: ${estadistica.porcentajeExito}% | Factor: ${estadistica.factorEfectividad} | Puntos: ${estadistica.puntosProyectados}")
    println(estadistica.categoriaRendimiento)

    estadistica.porcentajeExito = 45.0
    println("${estadistica.porcentajeExito}% → ${estadistica.categoriaRendimiento}")

    // estadistica.porcentajeExito = 150.0 // IllegalArgumentException
}