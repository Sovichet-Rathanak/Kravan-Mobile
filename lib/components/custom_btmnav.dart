import 'package:flutter/material.dart';
import 'package:kravan/constants/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.selectedIndex, required this.onItemTapped});
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: kMainThemeColor,
      elevation: 0,
      indicatorShape: UnderlineIndicator(color: Colors.white),
      selectedIndex: selectedIndex,
      onDestinationSelected: onItemTapped,
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home_outlined, color: Colors.white),
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
    final Paint paint =
        Paint()
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
