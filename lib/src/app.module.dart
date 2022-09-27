import 'package:flutter_modular/flutter_modular.dart';
import 'modules/products/views/products.page.dart';

class AppModule extends Module {
  //Representa um objeto que estará disponível para injeção em outras dependências.
  @override
  List<Bind> get binds => [];

  //configuração de página qualificada para navegação.
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ProductsPage()),
      ];
}
