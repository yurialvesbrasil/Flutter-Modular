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
                child: NavigationListener(builder: ((context, child) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Modular.to.path.endsWith('/red')
                            ? Colors.blue[900]
                            : Colors.transparent,
                        child: ListTile(
                          title: const Text("Red"),
                          selected: Modular.to.path.endsWith('/red'),
                          selectedColor: Colors.white,
                          onTap: () {
                            Modular.to.navigate('./red');
                          },
                        ),
                      ),
                      Container(
                          color: Modular.to.path.endsWith('/blue')
                              ? Colors.blue[900]
                              : Colors.transparent,
                          child: ListTile(
                            title: const Text("Blue"),
                            selected: Modular.to.path.endsWith('/blue'),
                            selectedColor: Colors.white,
                            onTap: () {
                              Modular.to.navigate('./blue');
                            },
                          )),
                      Container(
                          color: Modular.to.path.endsWith('/green')
                              ? Colors.blue[900]
                              : Colors.transparent,
                          child: ListTile(
                            title: const Text("Green"),
                            selected: Modular.to.path.endsWith('/green'),
                            selectedColor: Colors.white,
                            onTap: () {
                              Modular.to.navigate('./green');
                            },
                          ))
                    ],
                  );
                })),
              ),
            ),
            const Expanded(child: RouterOutlet()),
          ],
        ));
  }
}
