fun main() {
    println("Iteraciones Deportivas - Procesamiento de Datos de Plantilla")
    
    println("--- Cálculo de Intensidad ---")
    for (i in 1..5) {
        println("Sesión $i: Carga sugerida = ${i * 20}% de RM")
    }
    
    println("\n--- Convocatoria preliminar ---")
    for (i in 1 until 4) {
        println("Revisando cupo de reserva #$i")
    }
    
    println("\n--- Calendario de entrenamiento  ---")
    for (i in 1..15 step 3) {
        println("Día $i: Evaluación de fatiga muscular")
    }
    
    println("\n--- Cuenta regresiva para el partido  ---")
    for (i in 10 downTo 1) {
        println("$i minutos para el pitazo inicial...")
    }
    
    println("\n--- Lista de Jugadores ---")
    val convocados = listOf("Campana", "Enner", "Moises")
    for (jugador in convocados) {
        println("Jugador: $jugador (Estado: Disponible)")
    }
    
    println("\n--- Dorsales asignados ---")
    for ((index, nombre) in convocados.withIndex()) {
        println("Dorsal ${index + 1} -> $nombre")
    }
    
    println("\n--- Verificación de lesiones ---")
    for (i in 1..10) {
        if (i == 3) {
            println("Omitiendo item 3 por protocolo médico ")
            continue
        }
        if (i == 7) {
            println("Límite de registros alcanzado ")
            break
        }
        println("Procesando dato médico $i")
    }
    
    println("\n--- Dashboard de Rendimiento (Módulo 3: Biometría) ---")
    val plantillaData = listOf(
        Triple("Valencia, E", 75.5, 12.5), // Nombre, Peso_kg, Grasa_Corporal
        Triple("Páez, K", 68.2, 8.1),
        Triple("Hincapié, P", 78.4, 10.2)
    )
    
    for ((index, datos) in plantillaData.withIndex()) {
        val (nombre, peso, grasa) = datos
        val alertaGrasa = if (grasa > 11.0) "Atención: Sobre el rango" else "Óptimo"
        val categoriaPeso = if (peso < 70.0) "Ligero" else "Estándar"
        
        println("ID: $index - $nombre - Peso: $peso kg ($categoriaPeso) - Grasa: $grasa% ($alertaGrasa)")
    }
}