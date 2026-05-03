class JugadorInscripcion(val nombres: String, val contacto: String) {
    val nombresLimpios: String
    val servidorContacto: String

    init {
        require(nombres.isNotBlank()) { "El registro requiere un nombre válido" }
        require(contacto.contains("@")) { "El contacto debe ser un correo válido: $contacto" }

        nombresLimpios = nombres.trim().lowercase()
        servidorContacto = contacto.substringAfter("@")
    }
}

fun main() {
    val prospecto = JugadorInscripcion("  Jeremy Sarmiento  ", "jeremy@scouting.ec")
    println(prospecto.nombresLimpios)   
    println(prospecto.servidorContacto) 

    // JugadorInscripcion("", "error-com")
}