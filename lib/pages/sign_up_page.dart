import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
            'Create an account',
          ),
          Text(
            'Complete the sign up process to get started',
          ),
          Column(
            children: [
              Text('Full Name'),

            ],
          )
        ],
      ),
    );
  }
}
