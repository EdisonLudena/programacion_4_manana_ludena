sealed class EventoDeportivo(val titular: String, val detalle: String) {
    abstract fun generarLog(): String

    data class Fichaje(
        val jugador: String,
        val equipoOrigen: String,
        val monto: Double
    ) : EventoDeportivo("Nuevo Fichaje", "$jugador se une al club") {
        override fun generarLog() =
            "🤝 MERCADO → $jugador | Origen: $equipoOrigen | Inversión: $${"%.2f".format(monto)}"
    }

    data class Lesion(
        val jugador: String,
        val tipo: String,
        val tiempoEstimado: String
    ) : EventoDeportivo("Reporte Médico", tipo) {
        override fun generarLog() = "🏥 MÉDICO → $jugador | Lesión: $tipo | Baja: $tiempoEstimado"
    }

    data class ResultadoPartido(
        val rival: String,
        val marcador: String
    ) : EventoDeportivo("Resultado Final", marcador) {
        override fun generarLog() = "⚽ PARTIDO → vs $rival | Marcador: $marcador"
    }

    object SinActividad : EventoDeportivo("", "") {
        override fun generarLog() = "💤 Jornada sin novedades en el club"
    }
}

interface ProcesadorNoticias {
    val canal: String
    fun publicar(evento: EventoDeportivo): Boolean
}

class ModuloScouting : ProcesadorNoticias {
    override val canal = "Scouting & Mercado"
    override fun publicar(evento: EventoDeportivo): Boolean {
        if (evento !is EventoDeportivo.Fichaje) return false
        println("  [SCOUTING] Registro de transferencia: ${evento.jugador}")
        return true
    }
}

class ModuloMedico : ProcesadorNoticias {
    override val canal = "Departamento Médico"
    override fun publicar(evento: EventoDeportivo): Boolean {
        if (evento !is EventoDeportivo.Lesion) return false
        println("  [MÉDICO] Actualización de salud: ${evento.jugador}")
        return true
    }
}

class GestorNotificaciones(private val modulos: List<ProcesadorNoticias>) {

    fun procesarEvento(evento: EventoDeportivo) {
        println(evento.generarLog())
        val procesado = modulos.any { it.publicar(evento) }
        if (!procesado && evento !is EventoDeportivo.SinActividad) {
            println("  ⚠ No hay módulos interesados en este tipo de evento")
        }
        println()
    }
}

fun main() {
    val gestor = GestorNotificaciones(listOf(ModuloScouting(), ModuloMedico()))

    val historial: List<EventoDeportivo> = listOf(
        EventoDeportivo.Fichaje("Moisés Caicedo", "Brighton", 115000000.0),
        EventoDeportivo.Lesion("Pervis Estupiñán", "Desgarro muscular", "3 semanas"),
        EventoDeportivo.ResultadoPartido("Barcelona SC", "2-1"),
        EventoDeportivo.SinActividad
    )

    historial.forEach { gestor.procesarEvento(it) }
}