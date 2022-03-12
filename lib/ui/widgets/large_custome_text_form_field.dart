import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class LargeCustomeTextFormField extends StatelessWidget {
  final String name;
  final String text;

  const LargeCustomeTextFormField({
    Key? key,
    required this.name,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: whiteStyle.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 150,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 5,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
              hintText: text,
              hintStyle: textStyle.copyWith(
                fontSize: 14,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
