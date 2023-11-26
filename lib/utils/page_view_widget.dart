import 'package:ascolin/model/onboarding_content_model.dart';
import 'package:ascolin/pages/onboarding_1.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';



class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  PageViewWidgetState createState() => PageViewWidgetState();
}

class PageViewWidgetState extends State<PageViewWidget> {
  late PageController _pageController;
  int _currentPage = 0;
  int index = 0;

  @override
  void initState() {
    _pageController = PageController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List<OnBoardingContentModel> data = [
      OnBoardingContentModel(
          firstText: 'Quick Delivery At Your\n     Doorstep',
          secondText:
              'Enjoy quick pick-up and delivery to\n     your destination',
          image: 'assets/onb1.png'),
      OnBoardingContentModel(
        firstText: 'Flexible Payment',
        secondText:
            'Different modes of payment either\n   before and after delivery without stress',
        image: 'assets/onb2.png',
      ),
      OnBoardingContentModel(
          firstText: 'Real-time Tracking',
          secondText:
              'Track your packages/items from the\n   comfort of your home till final destination',
          image: 'assets/onb3.png')
    ];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.80,
            child: PageView.builder(
              controller: _pageController,
              itemCount: data.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                  print(index);
                });
              },
              itemBuilder: (context, index) {
                final results = data[index];
                return OnboardingTile(
                  image: results.image,
                  title: results.firstText,
                  text: results.secondText,
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(),
            child: PageViewDotIndicator(
              size: const Size(10, 10),
              currentItem: _currentPage,
              count: data.length,
              unselectedColor: Colors.grey,
              selectedColor: Colors.blue,
            ),
          ),
          _currentPage != data.length - 1
              ? const SizedBox(
                  height: 60,
                )
              : const SizedBox(
                  height: 40,
                ),
          _currentPage == data.length - 1
              ? Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff0560fa),
                      ),
                      height: 46,
                      width: 340,
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA7A7A7),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff0560FA),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _pageController.jumpToPage(2);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xff0560fa),
                          ),
                        ),
                        height: height * 0.055,
                        width: width * 0.22,
                        child: const Center(
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              color: Color(0xff0560fa),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        _pageController.nextPage(
                          duration: const Duration(microseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff0560fa),
                        ),
                        height: height * 0.055,
                        width: width * 0.22,
                        child: const Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
