import 'package:flutter/material.dart';
import 'package:kravan/screens/cart_screen.dart';
import 'package:kravan/screens/fave_screen.dart';
import 'package:kravan/screens/home_screen.dart';
import 'package:kravan/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/favorite': (context) => const FaveScreen(),
        '/cart': (context) => const CartScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
      debugShowCheckedModeBanner: false,

    );
  }
}