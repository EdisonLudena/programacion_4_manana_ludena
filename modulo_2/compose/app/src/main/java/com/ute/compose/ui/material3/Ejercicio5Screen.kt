package com.ute.compose.ui.material3

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp

class LibroBiblioteca(
    val id: String,
    val titulo: String,
    val autor: String
) {
    var disponible: Boolean = true
        private set

    fun prestar(): Boolean {
        return if (disponible) {
            disponible = false
            true
        } else {
            false
        }
    }

    fun devolver(): Boolean {
        return if (!disponible) {
            disponible = true
            true
        } else {
            false
        }
    }

    fun obtenerInformacion(): String {
        val estado = if (disponible) "Disponible" else "Prestado"
        return "ID: $id | Título: $titulo | Autor: $autor | Estado: $estado"
    }
}

@Composable
fun Ejercicio5Screen() {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
            .verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(24.dp)
    ) {
        Text("Ejercicio 5 · Sistema de Biblioteca", style = MaterialTheme.typography.titleMedium)
        HorizontalDivider()
        GestionBiblioteca()
    }
}

@Composable
private fun GestionBiblioteca() {
    var idInput by remember { mutableStateOf("") }
    var tituloInput by remember { mutableStateOf("") }
    var autorInput by remember { mutableStateOf("") }
    var buscarInput by remember { mutableStateOf("") }
    var logMensaje by remember { mutableStateOf("") }
    var listadoLibros by remember { mutableStateOf("") }

    val biblioteca = remember { mutableStateListOf<LibroBiblioteca>() }

    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Text("Registrar Libro", style = MaterialTheme.typography.labelLarge)

        OutlinedTextField(
            value = idInput,
            onValueChange = { idInput = it },
            label = { Text("ID") },
            modifier = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value = tituloInput,
            onValueChange = { tituloInput = it },
            label = { Text("Título") },
            modifier = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value = autorInput,
            onValueChange = { autorInput = it },
            label = { Text("Autor") },
            modifier = Modifier.fillMaxWidth()
        )

        Button(
            onClick = {
                if (idInput.isNotEmpty() && tituloInput.isNotEmpty()) {
                    biblioteca.add(LibroBiblioteca(idInput, tituloInput, autorInput))
                    logMensaje = "Libro registrado con éxito."
                    idInput = ""
                    tituloInput = ""
                    autorInput = ""
                }
            },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text("Registrar")
        }

        HorizontalDivider(modifier = Modifier.padding(vertical = 4.dp))
        Text("Acciones por Título", style = MaterialTheme.typography.labelLarge)

        OutlinedTextField(
            value = buscarInput,
            onValueChange = { buscarInput = it },
            label = { Text("Buscar / Prestar / Devolver por Título") },
            modifier = Modifier.fillMaxWidth()
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Button(
                onClick = {
                    val libro = biblioteca.find { it.titulo.equals(buscarInput, ignoreCase = true) }
                    logMensaje = libro?.obtenerInformacion() ?: "Libro no encontrado."
                },
                modifier = Modifier.weight(1f)
            ) {
                Text("Buscar")
            }

            Button(
                onClick = {
                    val libro = biblioteca.find { it.titulo.equals(buscarInput, ignoreCase = true) }
                    logMensaje = when {
                        libro == null -> "Libro no encontrado."
                        libro.prestar() -> "Préstamo exitoso de: ${libro.titulo}"
                        else -> "Error: El libro ya está prestado."
                    }
                },
                modifier = Modifier.weight(1f)
            ) {
                Text("Prestar")
            }

            Button(
                onClick = {
                    val libro = biblioteca.find { it.titulo.equals(buscarInput, ignoreCase = true) }
                    logMensaje = when {
                        libro == null -> "Libro no encontrado."
                        libro.devolver() -> "Devolución exitosa de: ${libro.titulo}"
                        else -> "Error: El libro no estaba prestado."
                    }
                },
                modifier = Modifier.weight(1f)
            ) {
                Text("Devolver")
            }
        }

        Button(
            onClick = {
                listadoLibros = if (biblioteca.isEmpty()) {
                    "No hay libros en la biblioteca."
                } else {
                    biblioteca.joinToString("\n") { it.obtenerInformacion() }
                }
            },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text("Listar Libros")
        }

        if (logMensaje.isNotEmpty()) {
            Text("Operación: $logMensaje", color = MaterialTheme.colorScheme.primary)
        }

        if (listadoLibros.isNotEmpty()) {
            Card(modifier = Modifier.fillMaxWidth()) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Text("Inventario Actual:", style = MaterialTheme.typography.titleSmall)
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(listadoLibros)
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun Ejercicio5Preview() {
    MaterialTheme { Ejercicio5Screen() }
}