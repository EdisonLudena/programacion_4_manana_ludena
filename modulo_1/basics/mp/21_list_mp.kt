fun main() {
  println("Módulo 2: Gestión de Entidades y Jugadores - Listas de Plantilla")
  val jugadores = listOf("Campana", "Enner", "Moises", "Enner", "Kendry")
  println("Total de inscritos: ${jugadores.size}")
  println("Capitán (índice 0): ${jugadores[0]}")
  println("Primer convocado: ${jugadores.first()}")
  println("Último convocado: ${jugadores.last()}")
  
  println("Jugador en posición 2: ${jugadores.get(2)}")
  println("Índice del primer registro de Enner: ${jugadores.indexOf("Enner")}")
  println("¿Moises está en la lista?: ${jugadores.contains("Moises")}")
  println("¿Kendry está registrado?: ${"Kendry" in jugadores}")
  
  //Sublista de entrenamiento
  println("Grupo de trabajo específico: ${jugadores.subList(1, 4)}")
  println("Titulares (primeros 2): ${jugadores.take(2)}")
  println("Suplentes (excluyendo primeros 2): ${jugadores.drop(2)}")
  println("Cierre de planilla (últimos 2): ${jugadores.takeLast(2)}")
  
  for (jugador in jugadores){
      println("Ficha: $jugador")
  }
  
  println("Módulo 2: Categorías (Listas Mutables)")
  val uniformes = mutableListOf("Blanco", "Azul", "Amarillo", "Rojo")
  println("Colores actuales: $uniformes")
  uniformes.add("Verde")
  println("Nuevo color alterno: $uniformes")
  uniformes.add(0, "Morado")
  println("Color principal actualizado: $uniformes")
  uniformes.remove("Verde")
  println("Color descontinuado: $uniformes")
  uniformes[1] = "Gris"
  println("Actualización de kit: $uniformes")

  println("Módulo 5: Cola de Eventos Live (Array Deque)")
  val eventosLive = ArrayDeque<Int>()
  println("Cola de eventos vacía: $eventosLive")
  eventosLive.addFirst(1) // Registro de inicio de partido
  println("Evento inicial: $eventosLive")
  eventosLive.addLast(2) // Registro de gol
  println("Sucesión de eventos: $eventosLive")
  eventosLive.addLast(0) // Registro de falta
  println("Historial acumulado: $eventosLive")
  eventosLive.removeFirst() // Procesando primer evento para el Dashboard
  println("Eventos pendientes por procesar: $eventosLive")
  eventosLive.removeLast() // Cancelación de último evento (VAR)
  println("Cola rectificada: $eventosLive")
}