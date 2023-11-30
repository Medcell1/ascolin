import 'package:flutter/material.dart';

class Constant {
  static void navigatePush(BuildContext context, Widget nextScreen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return nextScreen;
        },
      ),
    );
  }

  static void navigatePushReplacement(BuildContext context, Widget nextScreen) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return nextScreen;
        },
      ),
    );
  }
}
