fun main() {
    println("Módulo 2 y 4: Gestión de Identificadores y Atributos Únicos")
    val idJugadoresRegistrados = setOf(10, 22, 35, 40, 88, 40, 10, 35)
    println("IDs únicos de jugadores en el sistema: ${idJugadoresRegistrados}")
    
    println("Operaciones de Conjuntos de Plantilla (Scouting)")
    val jugadoresCandidatos = setOf(2, 4, 6, 8, 10)
    val jugadoresEnPrueba = setOf(3, 6, 9, 12)
    println("Candidatos detectados por el Scout: ${jugadoresCandidatos}")
    println("Jugadores actualmente en periodo de prueba: ${jugadoresEnPrueba}")
    
    println("Consolidado total de scouting (Unión): ${jugadoresCandidatos union jugadoresEnPrueba}")
    println("Jugadores en ambos procesos (Intersección): ${jugadoresCandidatos intersect jugadoresEnPrueba}")
    println("Candidatos que aún no inician pruebas (Substracción): ${jugadoresCandidatos subtract jugadoresEnPrueba}")
    
    println("Registro de Etiquetas de Habilidades (Set Mutable)")
    val habilidades = mutableSetOf("Velocidad", "Potencia", "Regate")
    println("Habilidades actuales: $habilidades")
    
    // El sistema evita duplicar etiquetas de métricas técnicas
    habilidades.add("Velocidad")
    println("Habilidades tras intentar duplicado: $habilidades")
    
    habilidades.add("Visión de Juego")
    println("Habilidades tras nueva métrica: $habilidades")
    
    habilidades.remove("Potencia")
    println("Habilidades tras depuración de perfil: $habilidades")
    
    println("¿Tiene la etiqueta 'Velocidad'?: ${"Velocidad" in habilidades}")
    println("¿Tiene la etiqueta 'Potencia'?: ${"Potencia" in habilidades}")
}