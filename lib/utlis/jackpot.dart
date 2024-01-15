import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kheloo/const/img.dart';

class JackPotNumber extends StatefulWidget {
  const JackPotNumber({super.key});

  @override
  State<JackPotNumber> createState() => _JackPotNumberState();
}

class _JackPotNumberState extends State<JackPotNumber> {
  int jackpot = 11105200;
  late Timer timer;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (count) {
      setState(() {
        jackpot += 1;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 50),
        Stack(
          children: [
            Image.asset(
              Img.jackpotBanner,
              width: 320,
              height: 145,
            ),
            Positioned(
                top: 55,
                left: 70,
                child: Text(
                  jackpot.toString().split('').join(' '),
                  style: const TextStyle(fontSize: 38, color: Colors.red),
                ))
          ],
        ),
        Container(height: 20),
      ],
    );
  }
}
