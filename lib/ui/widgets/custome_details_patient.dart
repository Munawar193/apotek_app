import 'package:apotek_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailPatient extends StatelessWidget {
  final String title;
  final String name;
  const DetailPatient({
    Key? key,
    required this.title,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: textStyle.copyWith(),
          ),
          Text(
            name,
            style: blueStyle.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
