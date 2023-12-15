import 'package:flutter/material.dart';

class Constant {
  // static String baseUrl = 'http://localhost:3000';
  static String baseUrl = 'http://18.130.232.167:3000';

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
