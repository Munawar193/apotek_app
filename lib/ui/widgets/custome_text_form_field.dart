import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomeTextFormField extends StatelessWidget {
  final String iconUrl;
  final String name;
  final String text;
  final String label;
  final double width;
  final double height;
  final double sizedbox;

  const CustomeTextFormField({
    Key? key,
    required this.iconUrl,
    required this.name,
    required this.text,
    this.label = '',
    this.width = 0,
    this.height = 0,
    this.sizedbox = 0,
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
        Row(
          children: [
            Expanded(
              child: Container(
                height: 53,
                padding: const EdgeInsets.only(left: 15, right: 15, top: 3),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: text,
                    hintStyle: textStyle.copyWith(
                      fontSize: 14,
                    ),
                    icon: Image.asset(
                      iconUrl,
                      width: 20,
                      height: 20,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: sizedbox,
            ),
            Container(
              height: height,
              width: width,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: kBlueColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  label,
                  style: whiteStyle.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
