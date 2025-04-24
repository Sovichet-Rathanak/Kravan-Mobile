import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/images/banner/aS2.png',
  'assets/images/banner/j11_banner.png',
  'assets/images/banner/oni3.jpg',
];

class AdBanner extends StatefulWidget {
  const AdBanner({super.key});

  @override
  State<AdBanner> createState() => _AdBannerState();
}

class _AdBannerState extends State<AdBanner> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          items:
              imgList.map((e) {
                return Container(
                  height: 200,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      e,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                );
              }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 1),
            enlargeCenterPage: false,
            viewportFraction: 1,
            padEnds: true,
            onPageChanged: (index, reason){
              setState(() {
                _current = index;
              });
            }
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              for(int i = 0; i<3; i++)
              GestureDetector(
                onTap: () => _controller.animateToPage(i),
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 20,
                  height: 5,
                  decoration: BoxDecoration(
                    color: _current == i? Colors.black : const Color(0x629E9E9E),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
