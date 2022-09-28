import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_flutter/src/modules/auth/blocs/events/login.event.dart';
import '../blocs/login.bloc.dart';
import '../blocs/states/login.state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Recuper instancia do bloc declarada no bind
  final bloc = Modular.get<LoginBloc>();

  @override
  void initState() {
    super.initState();

    bloc.stream.listen((state) {
      if (state is LoginSuccess) {
        Modular.to.navigate('/product/red');
      } else if (state is LoginFailure) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.message)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login Page")),
        body: BlocBuilder<LoginBloc, ILoginState>(
          bloc: bloc,
          builder: (context, state) {
            if (state is LoginIlde) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    bloc.add(LoginWithEmail(
                        password: "123456", email: "yurihotmaiL@hotmail.com"));
                  },
                  child: const Text("Logar"),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
