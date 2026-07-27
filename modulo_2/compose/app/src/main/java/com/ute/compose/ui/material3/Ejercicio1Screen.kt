package com.ute.compose.ui.material3

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp

class Libro(
    val titulo: String,
    val autor: String,
    val anioPublicacion: Int,
    val numeroPaginas: Int
) {
    fun mostrarInformacion(): String {
        return "Título: $titulo\nAutor: $autor\nAño: $anioPublicacion\nPáginas: $numeroPaginas"
    }

    fun esAntiguo(): Boolean {
        return anioPublicacion < 2000
    }
}

@Composable
fun Ejercicio1Screen() {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
            .verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(24.dp)
    ) {
        Text("Ejercicio 1 · Clase Libro", style = MaterialTheme.typography.titleMedium)
        HorizontalDivider()
        FormularioLibro()
    }
}

@Composable
private fun FormularioLibro() {
    var titulo by remember { mutableStateOf("") }
    var autor by remember { mutableStateOf("") }
    var anio by remember { mutableStateOf("") }
    var paginas by remember { mutableStateOf("") }
    var resultado by remember { mutableStateOf("") }

    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        OutlinedTextField(
            value = titulo,
            onValueChange = { titulo = it },
            label = { Text("Título") },
            modifier = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value = autor,
            onValueChange = { autor = it },
            label = { Text("Autor") },
            modifier = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value = anio,
            onValueChange = { anio = it },
            label = { Text("Año de publicación") },
            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
            modifier = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value = paginas,
            onValueChange = { paginas = it },
            label = { Text("Número de páginas") },
            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
            modifier = Modifier.fillMaxWidth()
        )

        Button(
            onClick = {
                val anioInt = anio.toIntOrNull() ?: 0
                val paginasInt = paginas.toIntOrNull() ?: 0

                val libro = Libro(titulo, autor, anioInt, paginasInt)

                val antiguedad = if (libro.esAntiguo()) "Es antiguo" else "Es reciente"
                resultado = "${libro.mostrarInformacion()}\nEstado: $antiguedad"
            },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text(text = "Verificar Libro")
        }

        if (resultado.isNotEmpty()) {
            Text(text = resultado)
        }
    }
}

@Preview(showBackground = true)
@Composable
fun Ejercicio1Preview() {
    MaterialTheme { Ejercicio1Screen() }
}