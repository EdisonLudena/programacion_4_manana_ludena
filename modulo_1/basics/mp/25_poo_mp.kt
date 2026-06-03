class Jugador(
    val id: Int,
    val nombre: String,
    val valorMercado: Double,
    private val historialLesiones: Int 
) {
    val valorConComision: Double 
        get() = valorMercado * 1.15

    val aptoParaJugar: Boolean
        get() = historialLesiones == 0

    override fun toString() = "Ficha: $nombre (Valor Base: $${"%.2f".format(valorMercado)})"
}

fun main() {
    val prospecto = Jugador(1, "Kendry Páez", 12000000.0, 0)

    println("¿Está apto para el próximo partido?: ${prospecto.aptoParaJugar}") 
    println("Valor final de transferencia (inc. comisión): $${"%.2f".format(prospecto.valorConComision)}") 
    
    println(prospecto)
}