import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'src/app.module.dart';
import 'src/app.widget.dart';

void main() {
  // Para escutar a chamada das rotas
  Modular.to.addListener(() {
    // A constant that is true if the application was compiled in debug mode.
    if (kDebugMode) {
      print("Rota: ${Modular.to.path}");
    }
  });
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
