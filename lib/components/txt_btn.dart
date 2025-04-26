import 'package:flutter/material.dart';

class TxtBtn extends StatelessWidget {
  final bool isSelected;
  const TxtBtn({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      margin: isSelected ? EdgeInsets.only(bottom: 4) : null,
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
        child: Text(
          "All",
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontFamily: "Inter",
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
