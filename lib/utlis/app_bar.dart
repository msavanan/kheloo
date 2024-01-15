import 'package:flutter/material.dart';
import 'package:kheloo/const/colors.dart';
import 'package:kheloo/const/img.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBarColor,
      child: Row(
        children: [
          SizedBox(
            width: 140,
            child: Center(
              child: Image.asset(
                Img.logo,
                height: 55,
                width: 110,
              ),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              print("promotion buttons pressed");
            },
            child: SizedBox(
              height: 50,
              width: 58,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Img.promotion,
                    width: 25,
                    height: 25,
                  ),
                  Text(
                    'Promotion',
                    style: TextStyle(
                        color: AppColors.promotionColor,
                        fontSize: 9,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("Login button pressed");
            },
            child: Container(
              width: 85,
              height: 60,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: const [0, 0.5],
                colors: [
                  AppColors.loginColor1,
                  AppColors.loginColor,
                ],
              )),
              //color: AppColors.loginColor,
              child: const Center(
                  child: Text(
                "LOGIN",
                style: TextStyle(fontSize: 14, color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => size;
}
