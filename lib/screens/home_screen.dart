import 'package:flutter/material.dart';
import 'package:kravan/components/carousel.dart';
import 'package:kravan/components/custom_appbar.dart';
import 'package:kravan/components/product_card.dart';
import 'package:kravan/components/text_divider.dart';
import 'package:kravan/constants/brand_btns.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(),
      body: SafeArea(
        child: ListView(
          children: [
            DividerText(dividerLabel: "Latest Drop"),
            SizedBox(height: 20),
            AdBanner(),
            BrandBtnRow(),
            DividerText(dividerLabel: "New and Noteworthy"),
            SizedBox(height: 20),
            Container(
              height: 650,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: (MediaQuery.of(context).size.width / 2) / 345,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => print("Deez ballz"),
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Explore More",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
