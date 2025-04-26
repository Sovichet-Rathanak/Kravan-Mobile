import 'package:flutter/material.dart';
import 'package:kravan/components/carousel.dart';
import 'package:kravan/components/custom_appbar.dart';
import 'package:kravan/components/text_divider.dart';
import 'package:kravan/constants/brand_btns.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: SafeArea(
        child: ListView(
          children: [
            DividerText(dividerLabel: "Latest Drop"),
            SizedBox(height: 30),
            AdBanner(),
            BrandBtnRow(),
            DividerText(dividerLabel: "New and Noteworthy"),
          ],
        ),
      ),
    );
  }
}
