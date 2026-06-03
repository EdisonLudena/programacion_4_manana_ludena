data class Division(val id: Int, val nombre: String)

data class Jugador(
    val id: Int,
    val nombre: String,
    val valorMercado: Double,
    val goles: Int,
    val division: Division,
    val activo: Boolean = true
) {
    val convocable: Boolean get() = activo && goles >= 0
    val valorConImpuestos: Double get() = valorMercado * 1.15

    fun actualizarValorPorRendimiento(porcentaje: Double): Jugador {
        require(porcentaje in -100.0..100.0) { "El ajuste debe estar entre -100 y 100" }
        return copy(valorMercado = valorMercado * (1 + porcentaje / 100))
    }
}

object SistemaScouting {
    private val divisiones = mutableListOf(
        Division(1, "Primera A"),
        Division(2, "Primera B"),
        Division(3, "Segunda Categoría")
    )
    private val jugadores = mutableListOf<Jugador>()
    private var contadorId = 1

    fun registrarJugador(nombre: String, valor: Double, goles: Int, divisionId: Int): Jugador? {
        val division = divisiones.find { it.id == divisionId } ?: return null
        val nuevoJugador = Jugador(contadorId++, nombre, valor, goles, division)
        jugadores.add(nuevoJugador)
        return nuevoJugador
    }

    fun obtenerPlantilla(): List<Jugador> = jugadores.toList()
    fun obtenerConvocables(): List<Jugador> = jugadores.filter { it.convocable }
    fun filtrarPorDivision(id: Int): List<Jugador> = jugadores.filter { it.division.id == id }
    fun buscarPorNombre(query: String): List<Jugador> = 
        jugadores.filter { it.nombre.contains(query, ignoreCase = true) }
}

fun main() {
    SistemaScouting.registrarJugador("Enner Valencia", 2500000.0, 12, 1)
    SistemaScouting.registrarJugador("Moisés Caicedo", 90000000.0, 2, 1)
    SistemaScouting.registrarJugador("Jugador Prueba", 50000.0, 0, 3)
    SistemaScouting.registrarJugador("Retirado", 10000.0, -1, 2)

    println("=== Reporte General de Scouting ===")
    SistemaScouting.obtenerPlantilla().forEach { j ->
        val status = if (j.convocable) "⚽" else "📋"
        println("$status ${j.nombre} — Division: ${j.division.nombre} — Valor Final: $${"%.2f".format(j.valorConImpuestos)}")
    }

    println("\n=== Mercado: Jugadores con Plusvalía del 15% ===")
    SistemaScouting.obtenerConvocables()
        .map { it.actualizarValorPorRendimiento(15.0) }
        .forEach { println("   ${it.nombre}: Nuevo Valor Mercardo $${"%.2f".format(it.valorMercado)}") }
}