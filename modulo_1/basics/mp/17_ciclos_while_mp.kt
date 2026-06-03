fun main() {
    println("Sistema de Gestión Deportiva - Registro de Entrenamiento")
    
    println("Simulación de vueltas de calentamiento")
    var vueltas = 1
    while(vueltas <= 5){
        println("Vuelta número: $vueltas")
        vueltas++
    }
    
    println("Control de repeticiones de fuerza")
    var series = 1
    do {
        println("Completando serie de potencia #$series")
        series++
    } while(series <= 3)
    
    println("Verificación de disponibilidad en plantilla")
    var dorsal = 1
    while(dorsal <= 10){
        dorsal++
        if(dorsal == 4) {
            println("Dorsal 4: Jugador en fisioterapia")
            continue
        }
        if(dorsal == 8) {
            println("Cupo de convocatoria completo")
            break
        }
        println("Asignando dorsal disponible: $dorsal")
    }
    
    var comandoScout: String
    while(true){
        println("Ingrese nombre de prospecto para seguimiento o 'terminar':")
        comandoScout = readLine()?.trim()?.lowercase() ?: ""
        
        if(comandoScout == "terminar") {
            println("Sincronizando reportes con Módulo de Scouting...")
            break
        }
        
        println("Agregado a lista de observación: $comandoScout")
    }
}