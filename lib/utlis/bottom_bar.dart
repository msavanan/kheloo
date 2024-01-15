import 'package:flutter/material.dart';
import 'package:kheloo/const/colors.dart';
import 'package:kheloo/const/img.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      // child: Container(
      //   child: CustomPaint(
      //     size: Size(MediaQuery.of(context).size.width, 60),
      //     painter: const Trapezium(),
      //   ),
      // )
      child: Row(
        children: [
          BottomBarButton(
              img: Img.support, name: "Support", imgColor: Colors.white),
          const Spacer(),
          BottomBarButton(
              img: Img.sports, name: "Sports", imgColor: AppColors.loginColor),
          const Spacer(),
          BottomBarButton(
              img: Img.casino,
              name: "Live Casino",
              imgColor: AppColors.loginColor),
          const Spacer(),
          BottomBarButton(
              img: Img.register, name: "Register", imgColor: Colors.white),
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
        children: [
          Image.asset(
            img,
            width: 30,
            height: 30,
            color: imgColor,
          ),
          Text(name, style: const TextStyle(fontSize: 12, color: Colors.white))
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
      ..moveTo(size.width / 4, 0)
      // ..relativeLineTo(0, size.height)
      // ..relativeLineTo(50 - (size.width / 2), 0)
      // ..relativeLineTo(50, -size.height)
      ..close();

    paint.style = PaintingStyle.fill;

    canvas.drawLine(
        Offset(size.width / 4, 0), Offset(size.width / 4, size.height), paint);
    canvas.drawLine(
        Offset(size.width / 4, 0), Offset(size.width / 3, 0), paint);
    canvas.drawLine(
        Offset(size.width / 3, 0), Offset(size.width / 3, size.height), paint);
    canvas.drawLine(Offset(size.width / 4, size.height),
        Offset(size.width / 3, size.height), paint);
    //canvas.drawPath(path, paint);

    //canvas.drawCircle(Offset(size.width / 2, size.height / 2), 10, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
