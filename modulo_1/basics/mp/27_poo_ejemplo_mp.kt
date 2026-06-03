
class Entidad(val nombreEntidad: String, val ciudad: String)

class JugadorRegistro(val nombres: String, val edad: Int) {
    fun obtenerFicha() = "Jugador: $nombres | Edad: $edad años"
    fun esAptoParaInferiores() = edad < 18
}

fun main() {
    val club = Entidad("LDU Quito", "Quito")
    println(club.nombreEntidad) 
    println(club.ciudad)        

    val prospecto = JugadorRegistro("Kendry Páez", 18)
    println(prospecto.obtenerFicha())     
    println(prospecto.esAptoParaInferiores())
}