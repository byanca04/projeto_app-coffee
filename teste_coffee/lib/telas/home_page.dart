import 'package:teste_coffee/colorback_home.dart';
import 'package:teste_coffee/elementos/bottom_nav_bar.dart';
import 'package:teste_coffee/telas/carrinho_page.dart';
import 'package:flutter/material.dart';
import 'package:teste_coffee/telas/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navegação do botão
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const MenuPage(),
    const CarrinhoPage(),
  ];

// bottom_nav_bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }

  //paginas carrinho e menu
  //botão sair
}
