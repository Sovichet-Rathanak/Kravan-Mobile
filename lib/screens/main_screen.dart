import 'package:flutter/material.dart';
import 'package:kravan/components/custom_btmnav.dart';
import 'package:kravan/screens/cart_screen.dart';
import 'package:kravan/screens/fave_screen.dart';
import 'package:kravan/screens/home_screen.dart';
import 'package:kravan/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    FaveScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(index){
    setState(() {  
    _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavBar(onItemTapped: _onItemTapped, selectedIndex: _selectedIndex,),
    );
  }
}
