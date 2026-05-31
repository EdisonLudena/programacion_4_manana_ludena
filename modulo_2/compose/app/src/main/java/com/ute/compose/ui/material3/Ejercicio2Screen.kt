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

class ProductoInventario(
    val codigo: String,
    val nombre: String,
    precioInicial: Double,
    stockInicial: Int
) {
    var precio: Double = if (precioInicial >= 0.0) precioInicial else 0.0
        private set

    var stock: Int = if (stockInicial >= 0) stockInicial else 0
        private set

    fun cambiarPrecio(nuevoPrecio: Double) {
        if (nuevoPrecio >= 0.0) {
            precio = nuevoPrecio
        }
    }

    fun aumentarStock(cantidad: Int) {
        if (cantidad > 0) {
            stock += cantidad
        }
    }

    fun disminuirStock(cantidad: Int) {
        if (cantidad > 0 && stock - cantidad >= 0) {
            stock -= cantidad
        }
    }

    fun mostrarInformacion(): String {
        return "Código: $codigo\nProducto: $nombre\nPrecio: $$precio\nStock: $stock"
    }
}

@Composable
fun Ejercicio2Screen() {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
            .verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(24.dp)
    ) {
        Text("Ejercicio 2 · Clase ProductoInventario", style = MaterialTheme.typography.titleMedium)
        HorizontalDivider()
        FormularioInventario()
    }
}

@Composable
private fun FormularioInventario() {
    var codigo by remember { mutableStateOf("") }
    var nombre by remember { mutableStateOf("") }
    var precioInput by remember { mutableStateOf("") }
    var stockInput by remember { mutableStateOf("") }
    var cantidadModificar by remember { mutableStateOf("") }
    var resultado by remember { mutableStateOf("") }

    var producto by remember { mutableStateOf<ProductoInventario?>(null) }

    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        OutlinedTextField(
            value = codigo,
            onValueChange = { codigo = it },
            label = { Text("Código") },
            modifier = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value = nombre,
            onValueChange = { nombre = it },
            label = { Text("Nombre") },
            modifier = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value = precioInput,
            onValueChange = { precioInput = it },
            label = { Text("Precio Inicial") },
            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
            modifier = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value = stockInput,
            onValueChange = { stockInput = it },
            label = { Text("Stock Inicial") },
            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
            modifier = Modifier.fillMaxWidth()
        )

        Button(
            onClick = {
                val p = precioInput.toDoubleOrNull() ?: 0.0
                val s = stockInput.toIntOrNull() ?: 0
                producto = ProductoInventario(codigo, nombre, p, s)
                resultado = producto?.mostrarInformacion() ?: ""
            },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text(text = "Crear Producto")
        }

        HorizontalDivider(modifier = Modifier.padding(vertical = 8.dp))

        OutlinedTextField(
            value = cantidadModificar,
            onValueChange = { cantidadModificar = it },
            label = { Text("Cantidad / Nuevo Precio") },
            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
            modifier = Modifier.fillMaxWidth()
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Button(
                onClick = {
                    val nPrecio = cantidadModificar.toDoubleOrNull() ?: -1.0
                    producto?.cambiarPrecio(nPrecio)
                    resultado = producto?.mostrarInformacion() ?: ""
                },
                modifier = Modifier.weight(1f)
            ) {
                Text(text = "Cambiar Precio")
            }

            Button(
                onClick = {
                    val cant = cantidadModificar.toIntOrNull() ?: 0
                    producto?.aumentarStock(cant)
                    resultado = producto?.mostrarInformacion() ?: ""
                },
                modifier = Modifier.weight(1f)
            ) {
                Text(text = "+ Stock")
            }

            Button(
                onClick = {
                    val cant = cantidadModificar.toIntOrNull() ?: 0
                    producto?.disminuirStock(cant)
                    resultado = producto?.mostrarInformacion() ?: ""
                },
                modifier = Modifier.weight(1f)
            ) {
                Text(text = "- Stock")
            }
        }

        if (resultado.isNotEmpty()) {
            Text(text = resultado)
        }
    }
}

@Preview(showBackground = true)
@Composable
fun Ejercicio2Preview() {
    MaterialTheme { Ejercicio2Screen() }
}