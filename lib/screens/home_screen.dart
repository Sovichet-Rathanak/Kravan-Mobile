import 'package:flutter/material.dart';
import 'package:kravan/components/carousel.dart';
import 'package:kravan/components/custom_appbar.dart';
import 'package:kravan/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: SafeArea(
        child: ListView(
          children: [
            DividerText(dividerLabel: "Latest Drop",),
            SizedBox(height: 30),
            AdBanner(),
            DividerText(dividerLabel: "New and Noteworthy")
          ],
        ),
      ),
    );
  }
}

