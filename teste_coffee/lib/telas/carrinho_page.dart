import 'package:teste_coffee/elementos/quadro_coffee.dart';
import 'package:teste_coffee/modelos/coffeeclass.dart';
import 'package:teste_coffee/modelos/menu_coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({super.key});

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  // remover um item do carrinho
  void removeFromCart(Coffee coffee) {
    Provider.of<MenuCoffee>(context, listen: false).removeItemFromCart(coffee);
  }

  void payNow() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuCoffee>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  const Text(
                    'Seu carrinho',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 202, 202, 202),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: value.carrinhoUsuario.length,
                        itemBuilder: (context, index) {
                          Coffee eachCoffee = value.carrinhoUsuario[index];

                          return QuadroCoffee(
                              coffee: eachCoffee,
                              onPressed: () => removeFromCart(eachCoffee),
                              icon: const Icon(Icons.delete));
                        }),
                  ),

                  // novo botão "compre agora"
                  GestureDetector(
                    onTap: payNow,
                    child: Container(
                      padding: const EdgeInsets.all(25.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 63, 20, 4),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          'Compre agora',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
