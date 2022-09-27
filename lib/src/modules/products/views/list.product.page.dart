import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListProductPage extends StatelessWidget {
  final String id;
  const ListProductPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista do produto $id")),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Modular.to.pop();
        },
        child: const Text("Voltar"),
      )),
    );
  }
}
