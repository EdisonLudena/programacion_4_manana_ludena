class MarcadorInmutable(val local: Int, val visitante: Int)

class ContadorGoles(var goles: Int = 0) {
    fun anotar() { goles++ }
    fun anular() { goles = 0 }
}

class RegistroScouting(nombre: String) {
    val nombreProcesado = nombre.uppercase()
}

fun main() {
    val resultadoFinal = MarcadorInmutable(2, 1)
    println("Resultado final - Local: ${resultadoFinal.local}, Visitante: ${resultadoFinal.visitante}")

    val marcador = ContadorGoles()
    marcador.anotar()
    marcador.anotar()
    println("Goles registrados: ${marcador.goles}")
    marcador.anular()
    println("Marcador reseteado: ${marcador.goles}")

    val prospecto = RegistroScouting("Enner Valencia")
    println("Ficha procesada: ${prospecto.nombreProcesado}")
}