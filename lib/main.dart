import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'src/app.module.dart';
import 'src/app.widget.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
