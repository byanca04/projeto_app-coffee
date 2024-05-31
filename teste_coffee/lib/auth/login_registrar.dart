import 'package:flutter/material.dart';
import 'package:teste_coffee/telas/login_page.dart';
import 'package:teste_coffee/telas/registrar_page.dart';
//import 'package:flutter/rendering.dart';

class LoginRegistrar extends StatefulWidget {
  const LoginRegistrar({super.key});

  @override
  State<LoginRegistrar> createState() => _LoginRegistrarState();
}

class _LoginRegistrarState extends State<LoginRegistrar> {
  bool showLoginPage = true;

  void togglePage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePage);
    } else {
      return RegistrarPage(onTap: togglePage);
    }
  }
}
