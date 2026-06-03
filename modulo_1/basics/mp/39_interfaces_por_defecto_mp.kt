interface Exportable {
    val idRegistro: String
    fun generarCsv(): String
    val formato: String get() = "CSV"
}

interface EvaluacionMedica {
    val hallazgos: List<String>
    val aptoParaJugar: Boolean get() = hallazgos.isEmpty()

    fun evaluar(): Boolean
    fun mostrarDiagnostico() {
        if (hallazgos.isEmpty()) println("Jugador en óptimas condiciones")
        else hallazgos.forEach { println("  ⚠ $it") }
    }
}

data class FichaSaludJugador(
    override val idRegistro: String,
    val nombres: String,
    val historialLesiones: List<String>,
    val porcentajeGrasa: Double
) : Exportable, EvaluacionMedica {

    override fun generarCsv() = 
        "$idRegistro|$nombres|${historialLesiones.joinToString(";")}|$porcentajeGrasa"

    override val hallazgos: List<String> get() = buildList {
        if (porcentajeGrasa > 15.0) add("Porcentaje de grasa elevado para alta competencia")
        if (historialLesiones.size > 3) add("Historial recurrente de lesiones detectado")
        if (nombres.isBlank()) add("Falta identificación oficial del deportista")
    }

    override fun evaluar() = aptoParaJugar
}

fun main() {
    val ficha1 = FichaSaludJugador("REG-10", "Kendry Páez", emptyList(), 10.5)
    val ficha2 = FichaSaludJugador("REG-99", "Jugador Prueba", listOf("Desgarro", "Esguince", "Fractura", "Tendinitis"), 18.2)

    fun exportarDato(e: Exportable) = println("Exportando [${e.formato}]: ${e.generarCsv()}")
    
    fun validarEstadoFisico(em: EvaluacionMedica) {
        println("Apto: ${em.aptoParaJugar}")
        em.mostrarDiagnostico()
    }

    exportarDato(ficha1)
    validarEstadoFisico(ficha1)
    
    println("---")
    
    exportarDato(ficha2)
    validarEstadoFisico(ficha2)
}