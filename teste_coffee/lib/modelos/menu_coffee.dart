import 'package:teste_coffee/modelos/coffeeclass.dart';
import 'package:flutter/material.dart';

class MenuCoffee extends ChangeNotifier {
  //  lista do menu de cafés
  final List<Coffee> _menu = [
    //lista de cafés
    Coffee(
        nome: 'Latte',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cappuccino.png"),
    Coffee(
        nome: 'Expresso',
        preco: "4.20",
        imagem: "lib/imagem_projeto/coffee.png"),
    Coffee(
        nome: 'Americano',
        preco: "4.20",
        imagem: "lib/imagem_projeto/coffee.png"),
    Coffee(
        nome: 'Cappuccino',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cappuccino.png"),
    /* Coffee(
        nome: 'Coffee', preco: "4.20", imagem: "lib/imagem_projeto/coffee.png"),
    Coffee(
        nome: 'Macchiato',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cappuccino.png"),
    Coffee(
        nome: 'Suco Morango',
        preco: "4.20",
        imagem: "lib/imagem_projeto/file.png"),
    Coffee(
        nome: 'Suco Manga',
        preco: "4.20",
        imagem: "lib/imagem_projeto/suco_manga.png"),
    Coffee(
        nome: 'Suco Blueberry',
        preco: "4.20",
        imagem: "lib/imagem_projeto/suco_blueberry.png"),
    Coffee(
        nome: 'Milk Tea',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Matcha',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Chocomango',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Latte Aveia',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Iced Latte Aveia',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Al Green',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Sanduiche vegana',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Empanada',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Brownie',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Cookies',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Pudim',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Torta de Morango',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Torta de Limão',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Pães', preco: "4.20", imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Bolo vegano ',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Bolo de Chocolate',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Pão de Queijo',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Empanada',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),
    Coffee(
        nome: 'Croissant',
        preco: "4.20",
        imagem: "lib/imagem_projeto/cAFE-PNG.png"),*/
  ];

  // carrinho do individuo/usuário
  final List<Coffee> _carrinhoUsuario = [];
  // obter no carrinho do usuário
  List<Coffee> get coffeeMenu => _menu;
  // pegar café da lista
  List<Coffee> get carrinhoUsuario => _carrinhoUsuario;
  // adicionar no carrinho
  void addItemToCart(Coffee coffee) {
    _carrinhoUsuario.add(coffee);
    notifyListeners();
  }

  // remoção do carrinho
  void removeItemFromCart(Coffee coffee) {
    _carrinhoUsuario.remove(coffee);
    notifyListeners();
  }
}
