import 'package:apotek_app/shared/theme.dart';
import 'package:flutter/material.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimeColor,
      body: Center(
          child: Text(
        'Chatting Page',
        style: blackStyle.copyWith(),
      )),
    );
  }
}
