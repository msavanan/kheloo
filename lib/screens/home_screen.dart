import 'package:flutter/material.dart';
import 'package:kheloo/utlis/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        size: Size(MediaQuery.of(context).size.width, 60),
      ),
      body: ListView(),
      bottomNavigationBar: Container(),
    );
  }
}
