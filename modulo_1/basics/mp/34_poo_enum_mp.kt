enum class EstadoFichaje(val mensaje: String, val esFinal: Boolean) {
    SOLICITUD   ("Evaluando perfil", false),
    NEGOCIACION ("Acordando términos", false),
    FIRMADO     ("Contrato registrado", true),
    RECHAZADO   ("No cumple perfil", true),
    EXPIRADO    ("Fuera de tiempo", true);

    fun permitirCambioA(nuevoEstado: EstadoFichaje): Boolean = when (this) {
        SOLICITUD   -> nuevoEstado == NEGOCIACION || nuevoEstado == RECHAZADO
        NEGOCIACION -> nuevoEstado == FIRMADO || nuevoEstado == RECHAZADO || nuevoEstado == EXPIRADO
        else        -> false
    }
}

fun main() {
    val procesoActual = EstadoFichaje.NEGOCIACION
    println(procesoActual.mensaje)    // Acordando términos
    println(procesoActual.esFinal)    // false

    val alertaSistema = when (procesoActual) {
        EstadoFichaje.SOLICITUD   -> "🔍"
        EstadoFichaje.NEGOCIACION -> "🤝"
        EstadoFichaje.FIRMADO     -> "📝"
        EstadoFichaje.RECHAZADO   -> "🛑"
        EstadoFichaje.EXPIRADO    -> "⌛"
    }
    println(alertaSistema)  // 🤝

    println("¿Se puede cerrar contrato?: ${procesoActual.permitirCambioA(EstadoFichaje.FIRMADO)}") // true
}