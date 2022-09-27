import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login Page")),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            Modular.to.navigate("/product/");
          },
          child: const Text("Logar"),
        )));
  }
}
