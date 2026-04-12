fun main() {
    println("--- Validación de Reglas de Negocio (SaaS) ---")
    
    val estaRegistrado = true
    val tieneSuscripcionPremium = false
    val esCapitan = true
    
    println("&& - And Lógico")
    // ¿Puede ver reportes avanzados? (Debe estar registrado Y ser Premium)
    println("$estaRegistrado && $tieneSuscripcionPremium = ${estaRegistrado && tieneSuscripcionPremium}")
    // ¿Es un líder activo? (Debe estar registrado Y ser Capitán)
    println("$estaRegistrado && $esCapitan = ${estaRegistrado && esCapitan}")
    
    println("\n|| - Or Lógico ")
    // ¿Tiene acceso al panel? (O es Premium O es el Capitán del equipo)
    println("$tieneSuscripcionPremium || $esCapitan = ${tieneSuscripcionPremium || esCapitan}")
    // ¿Sigue en el sistema? (Si está registrado O es capitán)
    println("$estaRegistrado || $esCapitan = ${estaRegistrado || esCapitan}")
    
    println("\n! - Not")
    // Si queremos saber si el acceso está restringido (lo opuesto a registrado)
    println("! $estaRegistrado = ${!estaRegistrado}")
    // Si queremos saber si NO es capitán
    println("! $esCapitan = ${!esCapitan}")
}