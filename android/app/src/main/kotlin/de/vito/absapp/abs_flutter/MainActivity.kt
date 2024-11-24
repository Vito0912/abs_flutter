package de.vito.absapp.abs_flutter

import androidx.annotation.NonNull
import com.ryanheise.audioservice.AudioServiceActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: AudioServiceActivity() {
    private val CHANNEL = "de.vito.absapp.abs_flutter/prevent_closing"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->
            if (call.method == "moveToBackground") {
                moveTaskToBack(true)
                result.success(true)
            } else {
                result.error("UNAVAILABLE", "Feature not available.", null)
            }
        }
    }
}