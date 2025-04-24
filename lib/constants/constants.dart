import 'package:flutter/material.dart';

final kDividerStyle = TextStyle(
  fontFamily: "Inter",
  fontWeight: FontWeight.bold,
  color: Colors.black,
  fontSize: 19,
);

class DividerText extends StatelessWidget {
  final String dividerLabel;
  const DividerText({super.key, required this.dividerLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20),
      child: Text(dividerLabel, style: kDividerStyle),
    );
  }
}
