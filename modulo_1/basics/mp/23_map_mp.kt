fun main() {
    println("Módulo 2: Directorio de Entidades (Maps Inmutables)")
    val sedesPrincipales = mapOf(
        "LDU" to "Quito",
        "BSC" to "Guayaquil",
        "IDV" to "Sangolquí",
        "Emelec" to "Guayaquil"
    )
    println("Sede de LDU: ${sedesPrincipales["LDU"]}")
    println("Sede de Aucas: ${sedesPrincipales["Aucas"]}")
    println(sedesPrincipales.getOrDefault("LDU", "Sede no registrada"))
    println(sedesPrincipales.getOrDefault("Aucas", "Sede no registrada"))
    println("Mapa de entidades: $sedesPrincipales")
    println("Clubes registrados: ${sedesPrincipales.keys}")
    println("Ciudades con sedes: ${sedesPrincipales.values}")
    println("Relación Club-Ciudad: ${sedesPrincipales.entries}")
    
    for ((club, ciudad) in sedesPrincipales){
        println("El club $club entrena en $ciudad")
    }
    
    println("\nMódulo 4: Valoración Económica y Activos (Maps Mutables)")
    val valoracionPlantilla = mutableMapOf(
        "Delantero" to 850000,
        "Mediocampista" to 400000,
        "Defensa" to 300000,
        "Portero" to 200000
    )
    
    valoracionPlantilla["Lateral"] = 150000
    println("Valoraciones actuales: $valoracionPlantilla")
    
    valoracionPlantilla["Delantero"] = 950000
    println("Actualización de mercado (Delantero): $valoracionPlantilla")
    
    valoracionPlantilla.remove("Portero")
    println("Baja de categoría en valoración: $valoracionPlantilla")
    
    // Si no existe la categoría, se inicializa el valor base
    valoracionPlantilla.getOrPut("Extremo") { 250000 }
    println("Categoría 'Extremo' indexada: $valoracionPlantilla")
    
    // Si ya existe, mantiene el valor actual
    valoracionPlantilla.getOrPut("Mediocampista") { 500000 }
    println("Validación de valor existente: $valoracionPlantilla")
}