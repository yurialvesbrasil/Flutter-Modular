import 'package:flutter/material.dart';
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
        ChildRoute('/',
            child: (context, args) => const ProductPage(),
            transition: TransitionType.noTransition,
            children: [
              ChildRoute('/red',
                  child: (context, args) => Container(color: Colors.red)),
              ChildRoute('/blue',
                  child: (context, args) => Container(color: Colors.blue)),
              ChildRoute('/green',
                  child: (context, args) => Container(color: Colors.green)),
            ]),
        /*ChildRoute('/list',
            child: (context, args) =>
                ListProductPage(id: args.queryParams['id'].toString())),*/
        /*ChildRoute('/list/:id',
            child: (context, args) =>
                ListProductPage(id: args.params['id'].toString())),*/
        ChildRoute('/list',
            child: (context, args) => ListProductPage(id: args.data),
            transition: TransitionType.custom,
            customTransition:
                CustomTransition(transitionBuilder: (_, value1, value2, child) {
              return FadeTransition(
                opacity: value1,
                child: child,
              );
            })),
      ];
}
