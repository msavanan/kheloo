import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kheloo/const/colors.dart';
import 'package:kheloo/const/img.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final items = [
      Image.asset(Img.banner1,
          width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
      Image.asset(Img.banner2,
          width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
      Image.asset(Img.banner3,
          width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
      Image.asset(Img.banner4,
          width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
    ];

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          CarouselSlider(
              items: items,
              options: CarouselOptions(
                height: 240,
                //aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                //enlargeFactor: 0.3,
                onPageChanged: (index, _) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                scrollDirection: Axis.horizontal,
              )),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items
                    .asMap()
                    .entries
                    .map((e) => BubbleIndicator(
                          enabled: e.key == currentIndex ? true : false,
                        ))
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BubbleIndicator extends StatelessWidget {
  const BubbleIndicator({super.key, required this.enabled});
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 1,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: enabled ? AppColors.loginColor : Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.white),
        borderRadius: const BorderRadius.all(Radius.circular(1)),
      ),
    );
  }
}
