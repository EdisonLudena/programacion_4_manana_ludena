class Directivo(val nombre: String)

open class MiembroClub(val nombre: String, val cargo: String) {
    open fun realizarTarea() = println("$nombre está cumpliendo sus labores como $cargo")
    open fun obtenerPerfil() = "Nombre: $nombre | Cargo: $cargo"

    fun marcarAsistencia() = println("$nombre ha registrado su jornada")
}

class Arbitro(nombre: String, val categoria: String) : MiembroClub(nombre, "Árbitro") {
    override fun realizarTarea() {
        super.realizarTarea()
        println("Revisando reglamento para la categoría $categoria")
    }

    override fun obtenerPerfil() = "${super.obtenerPerfil()} | Nivel: $categoria"
}

class Utillero(nombre: String, val seccion: String) : MiembroClub(nombre, "Utillero") {
    override fun obtenerPerfil() = "${super.obtenerPerfil()} | Área: $seccion"
}

fun main() {
    val oficial = Arbitro("Augusto Aragón", "FIFA")
    oficial.realizarTarea()
    
    val encargado = Utillero("Don Pepe", "Primer Equipo")
    println(encargado.obtenerPerfil())

    oficial.marcarAsistencia()
    encargado.marcarAsistencia()
}