import 'package:apotek_app/shared/theme.dart';
import 'package:flutter/material.dart';

class MoreActionUserProfile extends StatelessWidget {
  final String iconUrl;
  final String text;
  final Function() onPrassed;

  const MoreActionUserProfile({
    Key? key,
    required this.iconUrl,
    required this.text,
    required this.onPrassed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconUrl,
          width: 25,
          height: 25,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: blackStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onPrassed,
          child: Image.asset(
            'assets/right.png',
            width: 25,
            height: 25,
          ),
        ),
      ],
    );
  }
}
