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
        body: Row(
          children: [
            Container(
              color: Colors.blue[100],
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: const Text("Red"),
                      onTap: () {
                        Modular.to.navigate('./red');
                      },
                    ),
                    ListTile(
                      title: const Text("Blue"),
                      onTap: () {
                        Modular.to.navigate('./blue');
                      },
                    ),
                    ListTile(
                      title: const Text("Green"),
                      onTap: () {
                        Modular.to.navigate('./green');
                      },
                    )
                  ],
                ),
              ),
            ),
            const Expanded(child: RouterOutlet()),
          ],
        ));
  }
}
