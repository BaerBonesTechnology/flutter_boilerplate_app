import 'package:flutter/material.dart';
import 'package:boilerplate_shop_app/cart.dart';
import 'package:boilerplate_shop_app/home.dart';
import 'package:boilerplate_shop_app/explore.dart';
import 'package:boilerplate_shop_app/menu.dart';

class MainLayout extends StatefulWidget {
  MainLayout({Key? key, AppBar? appBar}) : super(key: key);
  AppBar? appBar;

  @override
  State<MainLayout> createState() => _MainLayoutState(appBar);
}

class _MainLayoutState extends State<MainLayout> {

  _MainLayoutState(this._appBar);

  final AppBar? _appBar;
  static const List<Widget> _navOptions = <Widget>[
    Home(),
    Explore(),
    Cart(),
    Menu()
  ];

  String? title;
  static int index = 0;

  void _onItemClicked(int ndx) {
    setState(() {
      index = ndx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: Center(
        child: _navOptions.elementAt(index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemClicked,
        showSelectedLabels: false,
        backgroundColor: Colors.white,
        unselectedIconTheme: const IconThemeData(
          color: Colors.black26,
        ),
        selectedIconTheme: const IconThemeData(
            color: Colors.black87
        ),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More')
        ],
        currentIndex: index,
      ),
    );
  }
}
