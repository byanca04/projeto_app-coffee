import 'package:teste_coffee/elementos/my_botton.dart';
import 'package:teste_coffee/elementos/my_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:app_coffee/elementos/square_tile.dart';
import 'package:flutter/material.dart';

class RegistrarPage extends StatefulWidget {
  final Function()? onTap;
  const RegistrarPage({super.key, required this.onTap});

  @override
  State<RegistrarPage> createState() => _RegistrarPageState();
}

class _RegistrarPageState extends State<RegistrarPage> {
  //text editing controller
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmarsenhaTextController = TextEditingController();
//signup
  void signUp() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    //senha match
    if (passwordTextController.text != confirmarsenhaTextController.text) {
      //circulo de carregmento
      Navigator.pop(context);
      //senha erro
      displayMessage("As senhas não coincidem!");
      return;
    }
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailTextController.text,
        password: passwordTextController.text,
      );
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);

      displayMessage(e.code);
    }
  }

// messagem pro usuario qunado não logar
  void displayMessage(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 141, 130),
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(height: 50),

            //logo
            const Icon(
              Icons.coffee,
              size: 120,
              color: Color.fromARGB(255, 53, 27, 18),
            ),

            const SizedBox(height: 25),

            //welcome back, you've been missed
            Text('Crie uma conta com a gente!',
                style: TextStyle(
                  color: Colors.brown[900],
                  fontSize: 17,
                )),

            const SizedBox(height: 25),

            //email
            MyTextfield(
              controller: emailTextController,
              hintText: 'Nome de Usúario',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            //password
            MyTextfield(
              controller: passwordTextController,
              hintText: 'Senha',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            MyTextfield(
              controller: confirmarsenhaTextController,
              hintText: 'Confirmar Senha',
              obscureText: true,
            ),

            const SizedBox(height: 25),

            //sing in botao
            MyButton(
              onTap: signUp,
              text: "Registre-se",
            ),

            const SizedBox(height: 25),

            //ja tem uma contao? seja agora!
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Já tem uma conta?',
                style: TextStyle(color: Colors.grey[800]),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    'Entre agora',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )),
            ]),
          ]),
        ),
      ),
    );
  }
}
