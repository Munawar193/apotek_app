import 'package:apotek_app/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final double width;
  final double height;
  final double fontsize;
  final double border;

  const CustomeButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width = 175,
    this.height = 53,
    this.fontsize = 15,
    this.border = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.circular(border),
      ),
      child: TextButton(
        child: Center(
          child: Text(
            text,
            style: whiteStyle.copyWith(
              fontSize: fontsize,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
