import 'package:flutter/material.dart';
import 'package:boilerplate_shop_app/custom/main_layout.dart';

void main() {
    runApp(
      MaterialApp(
      title: "Boilerplate Shop",
      initialRoute: '/',
      routes: {
        '/': (context)=> MainLayout()
        },
      )
    );
}
