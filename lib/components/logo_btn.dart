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
      margin: isSelected? EdgeInsets.only(bottom: 4): null,
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(40)),
        boxShadow:
            isSelected
                ? [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(1.0, 1.0),
                    blurRadius: 4,
                  ),
                ]
                : null,
      ),
      child: Center(
        child: Image(
          image: AssetImage(logoImg),
          fit: BoxFit.contain,
          width: 30,
          height: 30,
          color:
              isSelected
                  ? Colors.white
                  : null, // Change logo color when selected
        ),
      ),
    );
  }
}
