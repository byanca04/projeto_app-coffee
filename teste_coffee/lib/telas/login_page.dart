import 'package:teste_coffee/elementos/my_botton.dart';
import 'package:teste_coffee/elementos/my_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:app_coffee/elementos/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  //
  void signIn() async {
// animação de carregamento
    showDialog(
      context: context,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailTextController.text,
          password: passwordTextController.text);
      //
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //
      Navigator.pop(context);
      //
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

  //metodo sign in
  //void signUserIn() {}

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
            Text(' Bem-vindo ao \nCOFFE COFFE!',
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 19,
                )),

            const SizedBox(height: 25),

            //username
            MyTextfield(
              controller: emailTextController,
              hintText: 'Email',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            //password etxtfield
            MyTextfield(
              controller: passwordTextController,
              hintText: 'Senha',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            //forgot  senha
            /*Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Esqueceu a senha?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),*/

            const SizedBox(height: 25),

            //sing in botao
            MyButton(
              onTap: signIn,
              text: "Entrar",
            ),

            const SizedBox(height: 20),

            //não é um membro? seja agora!
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Não tem uma conta?',
                style: TextStyle(color: Colors.grey[800]),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    'Registre-se agora',
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
