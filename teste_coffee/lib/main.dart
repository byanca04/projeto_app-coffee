import 'package:teste_coffee/modelos/menu_coffee.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:teste_coffee/auth/auth.dart';
import 'package:flutter/material.dart';
//import 'package:app_coffee/conexao/login_registrar.dart';
import 'package:provider/provider.dart';
import 'package:teste_coffee/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MenuCoffee(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthPage(),
      ),
    );
  }
}
