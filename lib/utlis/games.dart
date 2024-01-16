import 'package:flutter/material.dart';
import 'package:kheloo/const/colors.dart';
import 'package:kheloo/const/img.dart';
import 'package:kheloo/utlis/gradient_text.dart';

class Games extends StatelessWidget {
  const Games({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientText(
          "Games",
          style: TextStyle(
            fontSize: 28,
            color: AppColors.gamesTitleColor,
          ),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0, 0.5],
              colors: [Color(0xfff08f0f), Colors.white]),
        ),
        Container(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: 3,
          decoration: BoxDecoration(
            color: AppColors.loginColor,
            shape: BoxShape.rectangle,
            border: Border.all(color: AppColors.loginColor),
            borderRadius: const BorderRadius.all(Radius.circular(1)),
          ),
        ),
        Container(height: 10),
        const GameHeader(title: "Most Popular(15)"),
        Container(height: 10),
        GameCardGroup(
          imgOne: Img.mpGames1,
          imgTwo: Img.mpGames2,
          imgThree: Img.mpGames3,
          imgFour: Img.mpGames4,
        ),
        Container(height: 30),
        const GameHeader(title: "Playtech Live(103)"),
        Container(height: 10),
        GameCardGroup(
          imgOne: Img.playtech1,
          imgTwo: Img.playtech2,
          imgThree: Img.playtech2,
          imgFour: Img.playtech2,
        ),
        Container(height: 50)
      ],
    );
  }
}

class GameHeader extends StatelessWidget {
  const GameHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Container(
            color: AppColors.loginColor,
            height: 38,
            width: 80,
            child: const Center(
              child: Text(
                "Show more",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class GameCardGroup extends StatelessWidget {
  const GameCardGroup(
      {super.key,
      required this.imgOne,
      required this.imgTwo,
      required this.imgThree,
      required this.imgFour});
  final String imgOne;
  final String imgTwo;
  final String imgThree;
  final String imgFour;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(width: 10),
          GameCard(img: imgOne),
          Container(width: 20),
          GameCard(index: 1, img: imgTwo),
          Container(
            width: 10,
          )
        ]),
        Container(height: 20),
        Row(
          children: [
            Container(width: 10),
            GameCard(index: 2, img: imgThree),
            Container(width: 20),
            GameCard(index: 3, img: imgFour),
            Container(width: 10),
          ],
        )
      ],
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard({super.key, this.index = 0, required this.img});
  final int index;
  final String img;

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width / 2) - 20;

    return Container(
        width: width,
        height: 136,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.loginColor,
          ),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Image.asset(
              img,
              width: width,
              height: 136,
              fit: BoxFit.fill,
            ).image,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: index == 3 || index == 2 ? null : 0,
              left: index == 1 || index == 3 ? null : 0,
              right: index == 1 || index == 3 ? 0 : null,
              bottom: index == 3 || index == 2 ? 0 : null,
              child: RotatedBox(
                quarterTurns: index == 1
                    ? 1
                    : index == 3
                        ? 2
                        : index == 2
                            ? 3
                            : 0,
                child: Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(12)),
                    image: DecorationImage(
                      image: Image.asset(
                        Img.topBanner,
                        width: 100,
                        height: 60,
                      ).image,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 1,
              left: 0,
              child: Container(
                height: 16,
                width: width,
                decoration: BoxDecoration(
                    color: AppColors.gameBanner,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'Min.',
                          style: const TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          children: [
                            TextSpan(
                              text: '₹',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.loginColor),
                            ),
                            const TextSpan(
                              text: '10',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ]),
                    ),
                    Container(
                      width: 1,
                      margin: const EdgeInsets.only(left: 8, right: 8),
                      color: AppColors.loginColor,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Max.',
                          style: const TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          children: [
                            TextSpan(
                              text: '₹',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.loginColor),
                            ),
                            const TextSpan(
                              text: '100k',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
