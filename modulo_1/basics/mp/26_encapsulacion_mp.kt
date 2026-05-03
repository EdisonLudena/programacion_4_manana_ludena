class ContratoJugador(nombres: String, montoInicial: Double) {

    val nombres: String = nombres

    private var presupuestoAsignado: Double = montoInicial

    internal val codigoFifa: String = 
        "ECU${(1000..9999).random()}"

    protected fun calcularBonoRendimiento(): Double = presupuestoAsignado * 0.05

    fun aumentarPresupuesto(monto: Double) {
        require(monto > 0) { "El incremento debe ser positivo" }
        presupuestoAsignado += monto
        println("Aumento: $${"%.2f".format(monto)} | Fondo Actual: ${consultarPresupuesto()}")
    }

    fun pagarFichaje(monto: Double): Boolean {
        require(monto > 0) { "El monto del fichaje debe ser positivo" }
        if (monto > presupuestoAsignado) {
            println("Presupuesto de la entidad insuficiente")
            return false
        }
        presupuestoAsignado -= monto
        println("Pago realizado: $${"%.2f".format(monto)} | Fondo Restante: ${consultarPresupuesto()}")
        return true
    }

    fun consultarPresupuesto(): String = "$${"%.2f".format(presupuestoAsignado)}"
}

fun main() {
    val contrato = ContratoJugador("Moises Caicedo", 5000.0)

    contrato.aumentarPresupuesto(2500.0) 
    contrato.pagarFichaje(1200.0)      
    contrato.pagarFichaje(10000.0)     

    println(contrato.nombres)            
    println(contrato.consultarPresupuesto()) 
}