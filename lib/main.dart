// import 'dart:js';

import 'package:ecommerce_project/models/shop.dart';
import 'package:ecommerce_project/pages/cart_page.dart';
import 'package:ecommerce_project/pages/home_page.dart';
import 'package:ecommerce_project/pages/intro_page.dart';
import 'package:ecommerce_project/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/home_page': (context) => const HomePage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
