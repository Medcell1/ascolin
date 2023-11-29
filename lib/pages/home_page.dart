import 'package:ascolin/utils/reusable_textfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.08,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Services',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
                border: InputBorder.none,
                filled: true,
                fillColor: Color(0xffCFCFCF),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff0560FA),
            ),
            height: height * 0.13,
            width: width * 0.9,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Hello Ken',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      'We trust you are having a great time',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.18,
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 35,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              const Text(
                'Special for you',
                style: TextStyle(
                  color: Color(
                    0xffEC8000,
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                      0xffEC8000,
                    ),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.navigate_next,
                    size: 15,
                    color: Color(
                      0xffEC8000,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 70,
                width: 180,
                child: Container(
                  margin: const EdgeInsets.only(left: 10, top: 20),
                  child: const Text(
                    'Tech Meetup\ncoming soon',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffEC8000),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 70,
                width: 180,
                child: Container(
                  margin: const EdgeInsets.only(left: 10, top: 20),
                  child: const Text(
                    'Tech Meetup\ncoming soon',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(right: width * 0.5),
            child: const Text(
              'What would you like to do',
              style: TextStyle(
                color: Color(0xff0560FA),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: height * 0.2,
                width: width * 0.4,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image(
                        image: AssetImage('assets/home1.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Customer Care',
                        style: TextStyle(
                          color: Color(0xff0560FA),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
