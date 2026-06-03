data class JugadorDatos(
    val id: Int,
    val nombre: String,
    val salario: Double,
    val posicion: String,
    val disponible: Boolean = true
)

fun main() {
    val j1 = JugadorDatos(10, "Lionel Messi", 1000000.0, "Delantero")
    val j2 = JugadorDatos(10, "Lionel Messi", 1000000.0, "Delantero")
    val j3 = JugadorDatos(25, "Moises Caicedo", 500000.0, "Mediocampista")

    // toString() automático
    println(j1)

    // equals() por valor
    println(j1 == j2)   // true
    println(j1 == j3)   // false

    // copy() — nuevo objeto con cambios puntuales
    val renovacion = j1.copy(salario = 1200000.0)
    val lesionado  = j1.copy(disponible = false)

    // Desestructuración
    val (id, nombre, salario) = j1
    println("ID: $id | Jugador: $nombre | Salario: $$salario")

    // En bucles con desestructuración
    listOf(j1, j3).forEach { (idRef, nombreRef, salarioRef) ->
        println("Ficha [$idRef] $nombreRef — $$salarioRef")
    }
}