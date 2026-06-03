fun main() {
    println("--- Gestión de Pagos ---")
    println("Condicional If - else")
    
    println("¿El jugador tiene beca deportiva? s/n: ")
    // Mantenemos la lógica de comparación con "s"
    val tieneBeca = readLine()?.trim()?.lowercase() == "s"
    
    println("Costo de Inscripción mensual: ")
    val costoBase = readLine()?.toDoubleOrNull() ?: 0.0
    
    if (tieneBeca) {
        // Si tiene beca, el sistema aplica un descuento (cobertura) del 80%
        val descuento = costoBase * 0.80
        val totalAPagar = costoBase - descuento
        println("Beca aplicada (80%): -$${"%.2f".format(descuento)}")
        println("Total a pagar con beca: $${"%.2f".format(totalAPagar)}")
    } else {
        // Si no tiene beca, paga el costo completo
        println("Pago de pensión completa: $${"%.2f".format(costoBase)}")
    }
}