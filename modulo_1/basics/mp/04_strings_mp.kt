fun main() {
    
    val nombre = "Enner"
    val apellido = "Valencia"
    val golesActuales = 35
    
    // Variable simple
    println("Cargando perfil de: $nombre")
    
    // Expresión (Convertir a mayúsculas y calcular proyección de goles)
    println("JUGADOR: ${nombre.uppercase()} ${apellido.uppercase()}")
    println("Proyección si anota 5 más: ${golesActuales + 5} goles")
    
    // String Multilínea (Ficha del Jugador)
    val fichaTecnica = """
        |DATOS DEL JUGADOR
        |Nombre Completo: $nombre $apellido
        |Goles en temporada: $golesActuales
        |Estado de Goleador: ${if(golesActuales >= 10) "Destacado" else "En racha"}
    """.trimMargin()
    
    println(fichaTecnica)
}