fun main() {
    println("--- Comparativa de Rendimiento Deportivo ---")
    
    // Comparación de Goles entre dos jugadores
    var golesJugador1 = 10
    var golesJugador2 = 2
    
    println("¿Tienen los mismos goles?")
    println("$golesJugador1 == $golesJugador2 : ${golesJugador1 == golesJugador2}")
    
    println("¿Tienen diferente cantidad de goles?")
    println("$golesJugador1 != $golesJugador2 : ${golesJugador1 != golesJugador2}")
    
    println("¿El Jugador 1 superó al Jugador 2?")
    println("$golesJugador1 > $golesJugador2 : ${golesJugador1 > golesJugador2}")
    
    println("¿El Jugador 1 tiene menos goles?")
    println("$golesJugador1 < $golesJugador2 : ${golesJugador1 < golesJugador2}")
    
    println("¿El Jugador 1 tiene igual o menos goles?")
    println("$golesJugador1 <= $golesJugador2 : ${golesJugador1 <= golesJugador2}")
    
    println("¿El Jugador 1 tiene igual o más goles?")
    println("$golesJugador1 >= $golesJugador2 : ${golesJugador1 >= golesJugador2}")

    println("\n--- Validación de Datos del Sistema ---")
    
    // Comparación de IDs o nombres de equipos
    val idEquipoLocal = 15
    val idEquipoVisitante = 10
    
    println("¿Es el mismo equipo (ID)?")
    println("$idEquipoLocal == $idEquipoVisitante = ${idEquipoLocal == idEquipoVisitante}")
    
    println("Validación técnica con .equals:")
    println("$idEquipoLocal.equals($idEquipoVisitante) = ${idEquipoLocal.equals(idEquipoVisitante)}")
    
    println("¿Son equipos distintos?")
    println("$idEquipoLocal != $idEquipoVisitante = ${idEquipoLocal != idEquipoVisitante}")
    
    println("¿ID Local es mayor?")
    println("$idEquipoLocal > $idEquipoVisitante = ${idEquipoLocal > idEquipoVisitante}")
    
    println("¿ID Local es mayor o igual?")
    println("$idEquipoLocal >= $idEquipoVisitante = ${idEquipoLocal >= idEquipoVisitante}")
    
    println("¿ID Local es menor?")
    println("$idEquipoLocal < $idEquipoVisitante = ${idEquipoLocal < idEquipoVisitante}")
    
    println("¿ID Local es menor o igual?")
    println("$idEquipoLocal <= $idEquipoVisitante = ${idEquipoLocal <= idEquipoVisitante}")
}