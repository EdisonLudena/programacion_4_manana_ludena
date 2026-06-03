object SistemaGestion {
    val servidorLocal: String = "192.168.1.50"
    val puertoServicio: Int = 8080
    private val tokenAcceso: String = "auth-token-ecu-2026"

    fun obtenerUrlServicio() = "http://$servidorLocal:$puertoServicio/api/scouting"
    fun obtenerAutenticacion() = mapOf("X-Access-Token" to tokenAcceso)
}

class JugadorAfiliado private constructor(val id: Int, val nombre: String) {
    companion object {
        private var secuenciaId = 0

        fun registrar(nombre: String, licencia: String): JugadorAfiliado? {
            if (nombre.isBlank() || licencia.length < 5) return null
            return JugadorAfiliado(++secuenciaId, nombre.trim())
        }

        const val CATEGORIA_BASE = "FORMATIVAS"
    }
}

fun main() {
    println(SistemaGestion.obtenerUrlServicio())
    // SistemaGestion.tokenAcceso // ERROR — Acceso denegado

    val jugador = JugadorAfiliado.registrar("Enner Valencia", "LIC-998877")
    if (jugador != null) {
        println("Registro exitoso: ${jugador.nombre} con ID: ${jugador.id}")
        println("Categoría asignada: ${JugadorAfiliado.CATEGORIA_BASE}")
    }
}