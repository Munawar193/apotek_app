import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class NavigatorItem extends StatelessWidget {
  final String url;
  const NavigatorItem({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(url),
        ),
      ),
    );
  }
}
