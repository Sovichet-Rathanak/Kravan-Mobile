import 'package:flutter/material.dart';

class TxtBtn extends StatelessWidget {
  final bool isSelected;
  const TxtBtn({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
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
