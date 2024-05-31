import 'package:teste_coffee/auth/login_registrar.dart';
import 'package:teste_coffee/telas/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } 
          //
            else {
            return const LoginRegistrar();
          }
        }),
      ),
    );
  }
}
