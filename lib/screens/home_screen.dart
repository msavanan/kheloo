import 'package:flutter/material.dart';
import 'package:kheloo/const/colors.dart';
import 'package:kheloo/utlis/app_bar.dart';
import 'package:kheloo/utlis/bottom_bar.dart';
import 'package:kheloo/utlis/carousel.dart';
import 'package:kheloo/utlis/games.dart';
import 'package:kheloo/utlis/jackpot.dart';
import 'package:kheloo/utlis/language_selector.dart';
import 'package:kheloo/utlis/user_list.dart';
import 'package:vimeo_player_flutter/vimeo_player_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBarColor,
        appBar: CustomAppBar(
          size: Size(MediaQuery.of(context).size.width, 60),
        ),
        body: Container(
          color: AppColors.appBarColor,
          child: ListView(
            children: [
              const CarouselWidget(),
              const LanguageSelector(),
              const JackPotNumber(),
              const UserList(),
              // Container(
              //   color: AppColors.appBarColor,
              //   height: 250,
              //   child: const VimeoPlayer(
              //     videoId: '759401631',
              //   ),
              // ),
              Games(),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: 25,
          height: 25,
          child: FloatingActionButton(
            backgroundColor: AppColors.loginColor,
            onPressed: () {},
            child: Icon(
              Icons.add,
            ),
          ),
        ),
      ),
    );
  }
}
