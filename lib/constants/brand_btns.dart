import 'package:flutter/material.dart';
import 'package:kravan/components/logo_btn.dart';
import 'package:kravan/components/txt_btn.dart';

class BrandBtnRow extends StatefulWidget {
  const BrandBtnRow({super.key});

  @override
  State<BrandBtnRow> createState() => _BrandBtnRowState();
}

class _BrandBtnRowState extends State<BrandBtnRow> {
  int selectedIndex = 0;

  final brandButtons = [
    "txt_btn",
    "assets/images/brand_logo/nike_black.png",
    "assets/images/brand_logo/addidas_black.png",
    "assets/images/brand_logo/onitsuka_black.png",
  ];

  bool isButtonSelected(int index) {
    return selectedIndex == index;
  } // Compare if the current button is the same as the current index

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 30),
      child: SizedBox(
        height: 50,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: brandButtons.length,
          itemBuilder: (context, index) {
            final selected = isButtonSelected(index); //Store bool value

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index; //Keep track of the current index
                  print(index);
                });
              },
              child:
                  brandButtons[index] == "txt_btn"
                      ? TxtBtn(isSelected: selected)
                      : LogoBtn(
                        logoImg: brandButtons[index],
                        isSelected: selected,
                      ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 15),
        ),
      ),
    );
  }
}
