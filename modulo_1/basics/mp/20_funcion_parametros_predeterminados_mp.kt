
fun main() {
    println("Módulo 1: Usuarios y Control de Acceso - Registro de Personal")
    
    // Registro con todos los datos específicos
    println(registrarPersonal("Edison", 22, "Coach", true))
    
    // Registro rápido usando parámetros por defecto
    println(registrarPersonal("Carlos"))
    println(registrarPersonal("Mateo", 17))
    println(registrarPersonal("Kevin", 25, "Scout"))
    
    // Corrección del error: El nombre del parámetro debe ser 'estadoSuscripcion'
    println(registrarPersonal(edad = 19, nombre = "Jeremy", estadoSuscripcion = false))
}

fun registrarPersonal(
    nombre: String,
    edad: Int = 18,
    tipoUsuario: String = "Player",
    estadoSuscripcion: Boolean = true
): String {
    return "Ficha_Tecnica[Nombre: $nombre, Edad: $edad, Rol: $tipoUsuario, Suscripción_Activa: $estadoSuscripcion]"
}