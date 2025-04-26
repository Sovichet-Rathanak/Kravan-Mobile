import 'package:flutter/material.dart';

class LogoBtn extends StatelessWidget {
  final String logoImg;
  final bool isSelected;
  
  const LogoBtn({super.key, required this.logoImg, required this.isSelected});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Center(
        child: Image(
          image: AssetImage(logoImg),
          fit: BoxFit.contain,
          width: 30,
          height: 30,
          color: isSelected ? Colors.white : null, // Change logo color when selected
        ),
      ),
    );
  }
}