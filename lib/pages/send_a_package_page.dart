import 'package:ascolin/pages/notification_page.dart';
import 'package:ascolin/pages/transaction_successful_page.dart';
import 'package:ascolin/utils/reusable_navigation_button.dart';
import 'package:ascolin/utils/reusable_signup_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/elevated_textfield.dart';
import '../utils/reusable_container.dart';

class SendAPackagePage extends StatelessWidget {
  const SendAPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: height * 0.1,
        backgroundColor: Colors.white,
        title: Text(
          'Send a package',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade400,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Center(
          child: Icon(
            Icons.navigate_before,
            color: Color(0xff04009A),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.call_split_outlined),
                Text(
                  'Origin Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedTextField(
              text: 'Description',
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedTextField(
              text: 'Tracking',
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedTextField(
              text: 'Unite(kg)',
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedTextField(
              text: 'Quantite',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.location_on_sharp),
                Text(
                  'Destination Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedTextField(
              text: 'Pays',
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedTextField(
              text: 'Ville',
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Package Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedTextField(
              text: 'Type de transport',
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedTextField(
              text: 'Type de colis',
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedTextField(
              text: 'Note spéciale',
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Select delivery type',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.1,
                ),
                ReusableContainer(
                  icon: Icons.access_time,
                  iconColor: Colors.white,
                  height: height,
                  width: width,
                  text: 'Instant Delivery',
                  color: Color(0xff04009A),
                  textColor: Colors.white,
                ),
                SizedBox(
                  width: width * 0.08,
                ),
                ReusableContainer(
                  icon: Icons.calendar_month,
                  iconColor: Colors.grey,
                  height: height,
                  width: width,
                  text: 'Scheduled Delivery',
                  color: Colors.white,
                  textColor: Colors.grey.shade300,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ReusableNavigationButton(
                width: width,
                height: height,
                text: 'Next',
                containerColor: Color(0xffA7A7A7),
                textColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
