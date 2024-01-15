import 'package:flutter/material.dart';
import 'package:kheloo/const/colors.dart';
import 'package:kheloo/utlis/app_bar.dart';
import 'package:kheloo/utlis/bottom_bar.dart';
import 'package:kheloo/utlis/carousel.dart';
import 'package:kheloo/utlis/jackpot.dart';
import 'package:kheloo/utlis/language_selector.dart';
import 'package:kheloo/utlis/user_list.dart';
import 'package:vimeo_video_player/vimeo_video_player.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBarColor,
      appBar: CustomAppBar(
        size: Size(MediaQuery.of(context).size.width, 60),
      ),
      body: Container(
        color: AppColors.appBarColor,
        child: ListView(
          children: const [
            CarouselWidget(),
            LanguageSelector(),
            JackPotNumber(),
            UserList(),
            VimeoVideoPlayer(
              url: 'https://player.vimeo.com/video/759401631?h=27f2be5876',
            ),
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
    );
  }
}
