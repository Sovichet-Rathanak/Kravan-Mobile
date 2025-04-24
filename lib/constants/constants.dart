import 'package:flutter/material.dart';

final kMainThemeColor = Color(0xff0F0F0F);

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

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: kMainThemeColor,
      elevation: 0,
      indicatorShape: UnderlineIndicator(color: Colors.white),
      selectedIndex: 0,
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home_filled, color: Colors.white),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.favorite_border_sharp, color: Colors.white),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_2_outlined, color: Colors.white),
          label: '',
        ),
      ],
    );
  }
}

class UnderlineIndicator extends ShapeBorder {
  final double thickness;
  final double lineWidth;
  final Color color;
  final BorderRadius borderRadius; 

  const UnderlineIndicator({
    this.thickness = 2.0,
    this.lineWidth = 20.0,
    this.color = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(4.0)), 
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final double centerX = rect.left + rect.width / 2;
    final double halfWidth = lineWidth / 2;

    final Rect lineRect = Rect.fromLTWH(
      centerX - halfWidth,
      rect.bottom - thickness,
      lineWidth,
      thickness,
    );

    return Path()..addRRect(borderRadius.toRRect(lineRect)); 
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawPath(getOuterPath(rect), paint);
  }

  @override
  ShapeBorder scale(double t) => this;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) =>
      getOuterPath(rect);
}