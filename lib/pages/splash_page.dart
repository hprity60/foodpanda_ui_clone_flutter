import 'package:flutter/material.dart';

import '../core/values/app_colors.dart';
import '../core/values/text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/app_logo.png"),
            Text(
              "foodpanda",
              style: textStyleF42W600(color: logoColor),
            ),
          ],
        ),
      ),
    );
  }
}
