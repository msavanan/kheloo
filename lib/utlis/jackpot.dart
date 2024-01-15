import 'package:flutter/material.dart';
import 'package:kheloo/const/img.dart';

class JackPotNumber extends StatelessWidget {
  const JackPotNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Img.jackpotBanner,
      width: 320,
      height: 145,
    );
  }
}
