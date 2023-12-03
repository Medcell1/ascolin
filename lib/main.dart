import 'package:flutter/material.dart';

import 'pages/payment_method_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFFA7A7A7),
          ),
          iconTheme: IconThemeData(color: Color(0xFF04009A)),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      // home: SplashScreen(),
      home: PaymentMethodScreen(),
    );
  }
}
