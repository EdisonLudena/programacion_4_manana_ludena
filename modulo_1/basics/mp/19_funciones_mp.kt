fun main() {
    println("Módulo de Gestión Deportiva: Operaciones de Mercado")
    val estadoSistema = iniciarSistema()
    println(estadoSistema)
    
    val valorTotalEquipo = calcularValorMercado(850000, 150000)
    println("Valor total de la plantilla: $valorTotalEquipo")
    
    println("Cálculo de presupuesto restante: ${restarPresupuesto(1000000, 250000)}")
    println("Diferencia de goles calculada: ${calcularDiferenciaGoles(12, 5)}")
    
    registrarJugador("Enner Valencia")
}

fun iniciarSistema(): String {
    return "Conexión exitosa con la base de datos de la Entidad"
}

fun calcularValorMercado(valorBase: Int, bonoRendimiento: Int): Int {
    return valorBase + bonoRendimiento
}

fun restarPresupuesto(total: Int, gasto: Int): Int = total - gasto
fun calcularDiferenciaGoles(favor: Int, contra: Int) = favor - contra

fun registrarJugador(nombre: String){
    println("Jugador '$nombre' ha sido indexado en el Módulo de Scouting")
}