import 'package:flutter/material.dart';
import 'package:kheloo/const/colors.dart';
import 'package:kheloo/const/img.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: const [0, 0.5],
          colors: [
            AppColors.loginColor1,
            AppColors.loginColor,
          ],
        ),
      ),
      // child: Container(
      //   child: CustomPaint(
      //     size: Size(MediaQuery.of(context).size.width, 90),
      //     painter: const Trapezium(),
      //   ),
      // )
      child: Stack(
        children: [
          Container(
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 90),
              painter: const Trapezium(),
            ),
          ),
          Row(
            children: [
              Container(
                width: 19,
              ),
              BottomBarButton(
                  img: Img.support, name: "Support", imgColor: Colors.white),
              const Spacer(),
              Container(
                width: (MediaQuery.of(context).size.width / 2) - 30,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 15,
                      ),
                      BottomBarButton(
                          img: Img.sports,
                          name: "Sports",
                          imgColor: AppColors.loginColor),
                      Container(
                        width: 30,
                      ),
                      BottomBarButton(
                          img: Img.casino,
                          name: "Live Casino",
                          imgColor: AppColors.loginColor),
                      Container(
                        width: 30,
                      ),
                      BottomBarButton(
                          img: Img.esports,
                          name: "E-Sports",
                          imgColor: AppColors.loginColor),
                      Container(
                        width: 30,
                      ),
                      BottomBarButton(
                          img: Img.slots,
                          name: "Slots",
                          imgColor: AppColors.loginColor),
                      Container(
                        width: 30,
                      ),
                      BottomBarButton(
                          img: Img.lottery,
                          name: "Lottery",
                          imgColor: AppColors.loginColor),
                      Container(
                        width: 30,
                      ),
                      BottomBarButton(
                          img: Img.tableGames,
                          name: "Table Games",
                          imgColor: AppColors.loginColor),
                      Container(
                        width: 30,
                      ),
                      BottomBarButton(
                          img: Img.poker,
                          name: "Poker",
                          imgColor: AppColors.loginColor),
                      Container(
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              BottomBarButton(
                  img: Img.register, name: "Register", imgColor: Colors.white),
              Container(
                width: 19,
              ),
            ],
          ),
        ],
      ),
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
    return InkWell(
      onTap: () {
        print("$name button pressed");
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            img,
            width: 30,
            height: 30,
            color: imgColor,
          ),
          Container(
            height: 5,
          ),
          Text(name,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))
        ],
      ),
    );
  }
}

class Trapezium extends CustomPainter {
  const Trapezium();

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.black;

    var path = Path()
      ..moveTo((size.width / 4) - 15, 0)
      ..lineTo((size.width / 4) + 15, size.height)
      ..lineTo((size.width * (3 / 4)) - 15, size.height)
      ..lineTo((size.width * (3 / 4)) + 15, 0)
      ..close();

    paint.style = PaintingStyle.fill;

    canvas.drawPath(path, paint);

    // canvas.drawCircle(Offset(size.width / 2, size.height / 2), 10, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2475000, size.height * 0.2020000);
    path_0.lineTo(size.width * 0.6262500, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.6262500, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.5600000, size.height * 0.3980000);
    path_0.lineTo(size.width * 0.3112500, size.height * 0.4000000);
    path_0.lineTo(size.width * 0.2475000, size.height * 0.2020000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
