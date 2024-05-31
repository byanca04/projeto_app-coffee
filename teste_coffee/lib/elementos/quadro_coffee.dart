import 'package:teste_coffee/modelos/coffeeclass.dart';
import 'package:flutter/material.dart';

// aqui vai ser a parte do bloco/quadro de cada um dos nossos cafés para apresenta-los separadamente
class QuadroCoffee extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  final Widget icon;
  QuadroCoffee(
      {super.key,
      required this.coffee,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.brown[200], borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffee.nome),
        subtitle: Text(coffee.preco),
        leading: Image.asset(coffee.imagem),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
