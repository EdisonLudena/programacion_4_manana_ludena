abstract class EntidadDeportiva(val nombre: String) {
    abstract val presupuestoTotal: Double
    abstract val cantidadMiembros: Int
    abstract fun obtenerResumen(): String

    fun compararInversion(otra: EntidadDeportiva): String = when {
        presupuestoTotal > otra.presupuestoTotal -> "$nombre tiene mayor inversión que ${otra.nombre}"
        presupuestoTotal < otra.presupuestoTotal -> "$nombre tiene menor inversión que ${otra.nombre}"
        else -> "$nombre y ${otra.nombre} manejan el mismo presupuesto"
    }

    override fun toString() = "${obtenerResumen()} | Presupuesto: $${"%.2f".format(presupuestoTotal)}"
}

class Club(val nombreClub: String, val valorPlantilla: Double, val empleados: Int) : EntidadDeportiva(nombreClub) {
    override val presupuestoTotal: Double get() = valorPlantilla * 1.15
    override val cantidadMiembros: Int get() = empleados
    override fun obtenerResumen() = "Club Profesional: $nombreClub con $cantidadMiembros integrantes"
}

class Academia(val nombreSede: String, val mensualidadBase: Double, val becados: Int) : EntidadDeportiva(nombreSede) {
    override val presupuestoTotal: Double get() = mensualidadBase * (100 - becados)
    override val cantidadMiembros: Int get() = 100
    override fun obtenerResumen() = "Academia formativa en $nombreSede ($becados becados)"
}

class SeleccionProvincial(val viaticos: Double, val jugadores: Int) : EntidadDeportiva("Selección de Pichincha") {
    override val presupuestoTotal: Double get() = viaticos * jugadores
    override val cantidadMiembros: Int get() = jugadores
    override fun obtenerResumen() = "Selección representativa con $jugadores convocados"
}

fun main() {
    val entidades: List<EntidadDeportiva> = listOf(
        Club("LDU Quito", 1500000.0, 45),
        Academia("Sede Cumbayá", 120.0, 15),
        SeleccionProvincial(500.0, 23)
    )

    entidades.forEach { println(it) }

    val entidadLider = entidades.maxByOrNull { it.presupuestoTotal }
    println("\nEntidad con mayor flujo: ${entidadLider?.nombre}")

    println(entidades[0].compararInversion(entidades[1]))
}