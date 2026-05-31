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

interface MetodoPago {
    fun procesarPago(monto: Double): String
}

class PagoEfectivo : MetodoPago {
    override fun procesarPago(monto: Double): String {
        return "Pago de $$monto recibido en efectivo. No aplica comisión."
    }
}

class PagoTarjeta : MetodoPago {
    override fun procesarPago(monto: Double): String {
        val comision = monto * 0.05
        val total = monto + comision
        return "Pago de $$monto procesado con tarjeta. Comisión (5%): $$comision. Total cargado: $$total."
    }
}

class PagoTransferencia : MetodoPago {
    override fun procesarPago(monto: Double): String {
        return "Transferencia por $$monto registrada. Esperando verificación de la red bancaria."
    }
}

@Composable
fun Ejercicio4Screen() {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
            .verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(24.dp)
    ) {
        Text("Ejercicio 4 · Polimorfismo en Métodos de Pago", style = MaterialTheme.typography.titleMedium)
        HorizontalDivider()
        FormularioPagos()
    }
}

@Composable
private fun FormularioPagos() {
    var montoInput by remember { mutableStateOf("") }
    var resultado by remember { mutableStateOf("") }

    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        OutlinedTextField(
            value = montoInput,
            onValueChange = { montoInput = it },
            label = { Text("Monto a pagar") },
            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
            modifier = Modifier.fillMaxWidth()
        )

        Button(
            onClick = {
                val monto = montoInput.toDoubleOrNull() ?: 0.0

                val listaPagos: List<MetodoPago> = listOf(
                    PagoEfectivo(),
                    PagoTarjeta(),
                    PagoTransferencia()
                )

                var transacciones = ""
                for (pago in listaPagos) {
                    transacciones += pago.procesarPago(monto) + "\n\n"
                }
                resultado = transacciones.trimEnd()
            },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text(text = "Procesar en Lista de Pagos")
        }

        if (resultado.isNotEmpty()) {
            Text(text = resultado)
        }
    }
}

@Preview(showBackground = true)
@Composable
fun Ejercicio4Preview() {
    MaterialTheme { Ejercicio4Screen() }
}