class ContratoTransferencia(val valorBase: Double, val bonos: Double) {
    val costoTotal: Double get() = valorBase + bonos
    val impuestoFifa: Double get() = costoTotal * 0.05

    constructor(montoUnico: Double) : this(montoUnico, 0.0)
    constructor(valorBase: Int, bonos: Int) : this(valorBase.toDouble(), bonos.toDouble())

    override fun toString() = "Contrato[Base: $valorBase, Bonos: $bonos] | Total: $costoTotal"
}

fun main() {
    val contrato1 = ContratoTransferencia(1200000.0, 300000.0)
    val contrato2 = ContratoTransferencia(500000.0)
    val contrato3 = ContratoTransferencia(100000, 25000)

    println(contrato1)
    println(contrato2)
    println(contrato3)
}