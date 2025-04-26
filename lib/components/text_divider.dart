import 'package:flutter/material.dart';
import 'package:kravan/constants/constants.dart';

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