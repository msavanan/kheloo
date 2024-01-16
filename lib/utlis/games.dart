import 'package:flutter/material.dart';
import 'package:kheloo/const/colors.dart';
import 'package:kheloo/const/img.dart';
import 'package:kheloo/utlis/gradient_text.dart';

class Games extends StatelessWidget {
  Games({super.key});
  final isHide1 = ValueNotifier(false);
  final isHide2 = ValueNotifier(false);
  final isHide3 = ValueNotifier(false);
  final isHide4 = ValueNotifier(false);
  final isHide5 = ValueNotifier(false);
  final isHide6 = ValueNotifier(false);

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
        GameHeader(
          title: "Most Popular(15)",
          isHide: isHide1,
        ),
        Container(height: 10),
        GameCardGroup(
          imgOne: Img.mpGames1,
          imgTwo: Img.mpGames2,
          imgThree: Img.mpGames3,
          imgFour: Img.mpGames4,
          isMinTen: true,
        ),
        ValueListenableBuilder(
            valueListenable: isHide1,
            builder: (BuildContext context, bool hide, Widget? child) {
              return hide
                  ? Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: GameCardGroup(
                        imgOne: Img.mpGames1,
                        imgTwo: Img.mpGames2,
                        imgThree: Img.mpGames3,
                        imgFour: Img.mpGames4,
                        isMinTen: true,
                      ),
                    )
                  : const SizedBox.shrink();
            }),
        Container(height: 30),
        GameHeader(
          title: "Playtech Live(103)",
          isHide: isHide2,
        ),
        Container(height: 10),
        GameCardGroup(
          imgOne: Img.playtech1,
          imgTwo: Img.playtech2,
          imgThree: Img.playtech2,
          imgFour: Img.playtech2,
        ),
        Container(height: 30),
        GameHeader(
          title: "Live Roulette(45)",
          isHide: isHide3,
        ),
        Container(height: 10),
        GameCardGroup(
          imgOne: Img.roulette1,
          imgTwo: Img.roulette2,
          imgThree: Img.roulette3,
          imgFour: Img.roulette4,
        ),
        Container(height: 30),
        GameHeader(
          title: "Live Blackjack(133)",
          isHide: isHide4,
        ),
        Container(height: 10),
        GameCardGroup(
          imgOne: Img.blacjack1,
          imgTwo: Img.blacjack1,
          imgThree: Img.blacjack2,
          imgFour: Img.blacjack2,
        ),
        Container(height: 30),
        GameHeader(
          title: "Live Dealer(33)",
          isHide: isHide5,
        ),
        Container(height: 10),
        GameCardGroup(
          imgOne: Img.dealer1,
          imgTwo: Img.dealer2,
          imgThree: Img.dealer3,
          imgFour: Img.dealer4,
        ),
        Container(height: 30),
        GameHeader(
          title: "Live Baccarat(74)",
          isHide: isHide6,
        ),
        Container(height: 10),
        GameCardGroup(
          imgOne: Img.baccarat1,
          imgTwo: Img.baccarat2,
          imgThree: Img.baccarat3,
          imgFour: Img.baccarat4,
        ),
        Container(height: 50)
      ],
    );
  }
}

class GameHeader extends StatelessWidget {
  const GameHeader({super.key, required this.title, required this.isHide});
  final String title;
  final ValueNotifier<bool> isHide;

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
          child: ValueListenableBuilder(
            valueListenable: isHide,
            builder: (BuildContext context, bool hide, Widget? child) {
              return InkWell(
                onTap: () {
                  isHide.value = !isHide.value;
                },
                child: Container(
                  color: AppColors.loginColor,
                  height: 38,
                  width: 80,
                  child: Center(
                    child: Text(
                      hide ? "Hide" : "Show more",
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              );
            },
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
      required this.imgFour,
      this.isMinTen = false});
  final String imgOne;
  final String imgTwo;
  final String imgThree;
  final String imgFour;
  final bool isMinTen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(width: 10),
          GameCard(
            img: imgOne,
            isMinTen: isMinTen,
          ),
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
  const GameCard(
      {super.key, this.index = 0, required this.img, this.isMinTen = false});
  final int index;
  final String img;
  final bool isMinTen;

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
                            TextSpan(
                              text: isMinTen ? '10' : '100',
                              style: const TextStyle(
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
