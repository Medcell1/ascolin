import 'package:flutter/material.dart';
class ReusableSignUpContainer extends StatelessWidget {
  final dynamic text;
  const ReusableSignUpContainer({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff0560fa),
      ),
      height: 46,
      width: 340,
      child:  Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}