import 'package:flutter_modular/flutter_modular.dart';
import 'views/login.page.dart';

class AuthModule extends Module {
  //Representa um objeto que estará disponível para injeção em outras dependências.
  @override
  List<Bind> get binds => [];

  //configuração de página qualificada para navegação.
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginPage()),
      ];
}
