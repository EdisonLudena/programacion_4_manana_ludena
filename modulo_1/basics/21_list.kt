// Online Kotlin compiler to run Kotlin program online
// Print "Try programiz.pro" message

fun main() {
  println("Listas")
  val frutas = listOf("manzanas","banana","cereza","banana","pera")
  println("Size: ${frutas.size}")
  println("Mostrar el elemento indice 0: ${frutas[0]}")
  println("Mostrar el primer elemento: ${frutas.first()}")
  println("Mostrar el ultimo elemento: ${frutas.last()}")
  
  
  println("Mostrar el elemento indice 2: ${frutas.get(2)}")
  println("Mostrar el indice contenido elemento: ${frutas.indexOf("banana")}")
  println("Verificar existencia del elemento: ${frutas.contains("cereza")}")
  println("Verificar existencia de un elemento: ${"banana" in frutas}")
  
  //Sublista
  println("sublista: ${frutas.subList(1,4)}")
  println("tomar primeros 2 elementos: ${frutas.take(2)}")
  println("suprimir tres primeros elementos: ${frutas.drop(2)}")
  println("tomar los dos elementos: ${frutas.takeLast(2)}")
  
  for (fruta in frutas){
      println(fruta)
  }
  
  println("Listas-Mutables")
  val colores = mutableListOf("blanco","azul","amarillo","rojo")
  println(colores)
  colores.add("verde")
  println(colores)
  colores.add(0,"morado")
  println(colores)
  colores.remove("verde")
  println(colores)
  colores[1] = "gris"
  println(colores)
  println("Array deque")
  val deque = ArrayDeque<Int>()
  println(deque)
  deque.addFirst(1)
  println(deque)
  deque.addLast(2)
  println(deque)
  deque.addLast(0)
  println(deque)
  deque.removeFirst()
  println(deque)
  deque.removeLast()
  println(deque)
  
}
 


