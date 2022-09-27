import 'package:flutter_modular/flutter_modular.dart';
import 'views/list.product.page.dart';
import 'views/product.page.dart';

class ProductModule extends Module {
  //Representa um objeto que estará disponível para injeção em outras dependências.
  @override
  List<Bind> get binds => [];

  //configuração de página qualificada para navegação.
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ProductPage()),
        /*ChildRoute('/list',
            child: (context, args) =>
                ListProductPage(id: args.queryParams['id'].toString())),*/
        /*ChildRoute('/list/:id',
            child: (context, args) =>
                ListProductPage(id: args.params['id'].toString())),*/
        ChildRoute('/list',
            child: (context, args) => ListProductPage(id: args.data),
            transition: TransitionType.leftToRight),
      ];
}
