import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pagina do produto')),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          //Modular.to.pushNamed("./list?id=100");
          //Modular.to.pushNamed("./list/100");
          Modular.to.pushNamed("./list", arguments: "200");
        },
        child: const Text("Listar produto"),
      )),
    );
  }
}
