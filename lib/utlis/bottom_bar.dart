import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }
}

class BottomBarButton extends StatelessWidget {
  const BottomBarButton(
      {super.key,
      required this.img,
      required this.name,
      required this.imgColor});
  final String img;
  final String name;
  final Color imgColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          img,
          width: 30,
          height: 30,
          color: imgColor,
        ),
        Text(name, style: const TextStyle(fontSize: 12, color: Colors.white))
      ],
    );
  }
}
