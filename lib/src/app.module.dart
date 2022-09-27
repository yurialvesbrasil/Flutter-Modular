import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_flutter/src/modules/auth/auth.module.dart';
import 'package:modular_flutter/src/splash.page.dart';

import 'modules/products/product.module.dart';

class AppModule extends Module {
  //Representa um objeto que estará disponível para injeção em outras dependências.
  @override
  List<Bind> get binds => [];

  //configuração de página qualificada para navegação.
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/auth', module: AuthModule()),
        ModuleRoute('/product', module: ProductModule())
      ];
}
