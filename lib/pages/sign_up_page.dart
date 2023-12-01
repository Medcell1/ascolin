import 'package:ascolin/pages/home_page.dart';
import 'package:ascolin/pages/sign_in_page.dart';
import 'package:ascolin/utils/reusable_signup_container.dart';
import 'package:ascolin/utils/reusable_small_container.dart';
import 'package:flutter/material.dart';

import '../utils/reusable_text.dart';
import '../utils/reusable_textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isChecked = false;
  bool _visibilitySecure = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 81,
            ),
            Container(
              margin: EdgeInsets.only(right: width * 0.45),
              child: const Text(
                'Create an account',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: width * 0.25),
              child: const Text(
                'Complete the sign up process to get started',
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
              text: 'Full Name',
              hintText: 'Abeed fsgh',
            ),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextField(
              text: 'Phone Number',
              hintText: '000000000',
            ),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextField(
              text: 'Emaill Address',
              hintText: '***********@mail.com',
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [i
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
                          color: _isChecked ? Color(0xff006CEC) : Colors.white,
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
                      text: 'By ticking this box, you agree to our',
                      color: Color(0xffCFCFCF),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const ReusableText(
                      text: 'Terms and',
                      color: Color(0xffEBBC2E),
                    ),
                  ],
                ),
                const Center(
                  child: ReusableText(
                    text: 'conditions and private policy',
                    color: Color(0xffEBBC2E),
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context) {
                          return const HomePage();
                        },
                      ), (route) => false);
                    },
                    child: const ReusableSignUpContainer(
                      text: 'Sign Up',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?  ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignInPage();
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
          ],
        ),
      ),
    );
  }
}
