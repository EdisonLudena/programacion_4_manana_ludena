interface Beneficio {
    fun aplicar(montoBase: Double): Double
    val descripcion: String
}

class BonoGoles(val cantidadGoles: Int) : Beneficio {
    override val descripcion = "Bono por Goles"
    override fun aplicar(montoBase: Double): Double {
        val extra = cantidadGoles * 500.0
        println("⚽ Sumando $${"%.2f".format(extra)} por $cantidadGoles goles")
        return montoBase + extra
    }
}

class DescuentoSancion(val tarjetasRojas: Int) : Beneficio {
    override val descripcion = "Sanción Disciplinaria"
    override fun aplicar(montoBase: Double): Double {
        val resta = tarjetasRojas * 200.0
        println("🟥 Restando $${"%.2f".format(resta)} por $tarjetasRojas tarjetas rojas")
        return montoBase - resta
    }
}

class PrimaFirma : Beneficio {
    override val descripcion = "Prima por Firma"
    override fun aplicar(montoBase: Double): Double {
        val extra = 1000.0
        println("✍️ Sumando $${"%.2f".format(extra)} por firma de contrato")
        return montoBase + extra
    }
}

fun liquidarSueldo(sueldoInicial: Double, rubro: Beneficio) {
    println("Calculando: ${rubro.descripcion}...")
    val sueldoFinal = rubro.aplicar(sueldoInicial)
    println("💰 Total liquidado: $${"%.2f".format(sueldoFinal)}")
}

fun main() {
    val rubros: List<Beneficio> = listOf(
        BonoGoles(3),
        DescuentoSancion(1),
        PrimaFirma()
    )

    val sueldoBase = 2500.0
    rubros.forEach { liquidarSueldo(sueldoBase, it) }
}