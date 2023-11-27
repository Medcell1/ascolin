import 'package:ascolin/pages/forgot_password_page.dart';
import 'package:ascolin/pages/sign_up_page.dart';
import 'package:ascolin/utils/reusable_signup_container.dart';
import 'package:ascolin/utils/reusable_textfield.dart';
import 'package:flutter/material.dart';

import '../utils/reusable_text.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _visibilitySecure = false;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Fill in your email and password to continue',
                  style: TextStyle(
                    color: Color(0xffA7A7A7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const ReusableTextField(
                  text: 'Email Address', hintText: '***********@mail.com'),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Password',
                  style: TextStyle(
                    color: Color(0xffA7A7A7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  style: TextStyle(),
                  obscuringCharacter: "*",
                  obscureText: _visibilitySecure,
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(
                      color: Color(0xffCFCFCF),
                    ),
                    hintText: '********',
                    border: const OutlineInputBorder(),
                    suffixIcon: InkWell(
                      onTap: () {
                        _visibilitySecure = !_visibilitySecure;
                        setState(() {});
                      },
                      child: _visibilitySecure
                          ? const Icon(
                              Icons.visibility_off,
                            )
                          : const Icon(
                              Icons.visibility,
                            ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  _isChecked = !_isChecked;
                  setState(() {});
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: _isChecked ? const Color(0xff006CEC) : Colors.white,
                    border: Border.all(
                      color: const Color(0xff006CEC),
                    ),
                  ),
                  child: Visibility(
                    visible: _isChecked,
                    child: Icon(
                      Icons.check,
                      color: _isChecked ? Colors.white : Colors.black,
                      size: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              const ReusableText(
                text: 'Remember Password',
                color: Color(0xffCFCFCF),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: width * 0.15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ForgotPasswordPage();
                      },
                    ),
                  );
                },
                child: const ReusableText(
                  text: 'Forgot Password?',
                  color: Color(0xff0560FA),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.25,
          ),
          const ReusableSignUpContainer(
            text: 'Log In',
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignUpPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff0560fa),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "or log in using",
            style: TextStyle(
                fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  'assets/fb.png',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Image(
                image: AssetImage(
                  'assets/google.png',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Image(
                image: AssetImage(
                  'assets/apple.png',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
