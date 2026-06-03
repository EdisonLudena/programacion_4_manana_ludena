// Online Kotlin compiler to run Kotlin program online
// Print "Try programiz.pro" message

fun main() {
    println("Map inmutables")
    val capitales = mapOf(
        "Espana" to "Madrid",
        "Francia" to "Paris",
        "Alemania" to "Berlin",
        "Italia" to "Roma"
    )
    println(capitales["Espana"])
    println(capitales["Portugal"])
    println(capitales.getOrDefault("Espana","Desconocido"))
    println(capitales.getOrDefault("Portugal","Desconocido"))
    println(capitales)
    println(capitales.keys)
    println(capitales.values)
    println(capitales.entries)
    for ((pais, capital) in capitales){
        println("$pais - $capital")
    }
    
    println("Map mutables")
    val inventario = mutableMapOf(
        "Laptop" to 10,
        "Impresaoras" to 4,
        "Teclados" to 12,
        "Mouse" to 8
    )
    inventario["Monitores"] = 5
    println(inventario)
    inventario["Laptops"] = 20
    println(inventario)
    inventario.remove("Mouse")
    println(inventario)
    inventario.getOrPut("Proyector"){15}
    println(inventario)
    inventario.getOrPut("Teclados"){15}
    println(inventario)
    
}
 


