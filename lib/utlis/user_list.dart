import 'package:flutter/material.dart';
import 'package:kheloo/const/colors.dart';
import 'package:kheloo/const/img.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "LIVE WITHDRAWAL",
          style: TextStyle(fontSize: 28, color: AppColors.liveWithdrawal),
        ),
        Container(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 3,
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: AppColors.loginColor,
            shape: BoxShape.rectangle,
            border: Border.all(color: AppColors.loginColor),
            borderRadius: const BorderRadius.all(Radius.circular(1)),
          ),
        ),
        Container(
          height: 10,
        ),
        const UserGroup()
      ],
    );
  }
}

class UserGroup extends StatelessWidget {
  const UserGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(bottom: 23),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.languageStripe,
          border: Border.all(color: AppColors.userGroupBorderColor, width: 2),
          borderRadius: BorderRadius.circular(22)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                UserDetails(name: 'Karvia', amount: '17,000', seconds: '4'),
                Container(width: 24),
                UserDetails(name: 'Anika', amount: '11,987', seconds: '0')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                UserDetails(name: 'Kahana', amount: '21,345', seconds: '8'),
                Container(width: 24),
                UserDetails(name: 'Anika', amount: '31,462', seconds: '6')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserDetails extends StatelessWidget {
  const UserDetails(
      {super.key,
      required this.name,
      required this.amount,
      required this.seconds});
  final String name;
  final String amount;
  final String seconds;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: AppColors.avatarColor,
                width: 3,
              )),
          child: Center(
              child: Image.asset(
            Img.user,
            width: 20,
            height: 20,
          )),
        ),
        Container(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$name ₹$amount',
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
            Opacity(
              opacity: 0.5,
              child: Text(
                '$seconds second ago',
                style: const TextStyle(fontSize: 10, color: Colors.white),
              ),
            )
          ],
        )
      ],
    );
  }
}
