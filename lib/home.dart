import 'package:flutter/material.dart';

import 'custom/main_layout.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AppBar? homeAppBar() {

    return AppBar(title: const Text('Home'),);
  }
  @override
  Widget build(BuildContext context) {
    MainLayout(appBar: homeAppBar());

    return Text('Home');
  }
}
