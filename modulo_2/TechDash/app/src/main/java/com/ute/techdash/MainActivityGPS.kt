package com.ute.techdash

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import com.ute.techdash.iu.hardware.gps.PantallaGPS
import com.ute.techdash.ui.theme.TechDashTheme

class MainActivityGPS : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            TechDashTheme {
                PantallaGPS()
            }
        }
    }
}