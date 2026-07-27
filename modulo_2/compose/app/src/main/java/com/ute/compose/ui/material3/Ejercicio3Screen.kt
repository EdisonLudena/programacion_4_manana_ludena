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

open class Vehiculo(
    val marca: String,
    val modelo: String,
    val anio: Int
) {
    open fun mostrarDatos(): String {
        return "Marca: $marca\nModelo: $modelo\nAño: $anio"
    }
}

class Auto(
    marca: String,
    modelo: String,
    anio: Int,
    val puertas: Int
) : Vehiculo(marca, modelo, anio) {
    override fun mostrarDatos(): String {
        return "${super.mostrarDatos()}\nPuertas: $puertas"
    }
}

class Motocicleta(
    marca: String,
    modelo: String,
    anio: Int,
    val cilindrada: String
) : Vehiculo(marca, modelo, anio) {
    override fun mostrarDatos(): String {
        return "${super.mostrarDatos()}\nCilindrada: $cilindrada"
    }
}

@Composable
fun Ejercicio3Screen() {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
            .verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(24.dp)
    ) {
        Text("Ejercicio 3 · Herencia de Vehículos", style = MaterialTheme.typography.titleMedium)
        HorizontalDivider()
        FormularioVehiculos()
    }
}

@Composable
private fun FormularioVehiculos() {
    var marca by remember { mutableStateOf("") }
    var modelo by remember { mutableStateOf("") }
    var anioInput by remember { mutableStateOf("") }
    var datoEspecifico by remember { mutableStateOf("") }
    var resultado by remember { mutableStateOf("") }

    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        OutlinedTextField(
            value = marca,
            onValueChange = { marca = it },
            label = { Text("Marca") },
            modifier = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value = modelo,
            onValueChange = { modelo = it },
            label = { Text("Modelo") },
            modifier = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value = anioInput,
            onValueChange = { anioInput = it },
            label = { Text("Año") },
            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
            modifier = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value = datoEspecifico,
            onValueChange = { datoEspecifico = it },
            label = { Text("Puertas (Auto) / Cilindrada (Moto)") },
            modifier = Modifier.fillMaxWidth()
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Button(
                onClick = {
                    val anioInt = anioInput.toIntOrNull() ?: 0
                    val puertasInt = datoEspecifico.toIntOrNull() ?: 0
                    val miAuto = Auto(marca, modelo, anioInt, puertasInt)
                    resultado = miAuto.mostrarDatos()
                },
                modifier = Modifier.weight(1f)
            ) {
                Text(text = "Crear Auto")
            }

            Button(
                onClick = {
                    val anioInt = anioInput.toIntOrNull() ?: 0
                    val miMoto = Motocicleta(marca, modelo, anioInt, datoEspecifico)
                    resultado = miMoto.mostrarDatos()
                },
                modifier = Modifier.weight(1f)
            ) {
                Text(text = "Crear Moto")
            }
        }

        if (resultado.isNotEmpty()) {
            Text(text = resultado)
        }
    }
}

@Preview(showBackground = true)
@Composable
fun Ejercicio3Preview() {
    MaterialTheme { Ejercicio3Screen() }
}