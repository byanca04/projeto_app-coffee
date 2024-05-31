import 'package:teste_coffee/elementos/quadro_coffee.dart';
import 'package:teste_coffee/modelos/coffeeclass.dart';
import 'package:teste_coffee/modelos/menu_coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  void addToCart(Coffee coffee) {
    Provider.of<MenuCoffee>(context, listen: false).addItemToCart(coffee);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Adicionado no carrinho com sucesso!"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuCoffee>(
      builder: (context, value, child) => SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              // texto principal
              'Um café para qualquer momento!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                itemCount: value.coffeeMenu.length,
                itemBuilder: (context, index) {
                  Coffee eachCoffee = value.coffeeMenu[index];

                  return QuadroCoffee(
                    coffee: eachCoffee,
                    icon: const Icon(Icons.add),
                    onPressed: () => addToCart(eachCoffee),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
