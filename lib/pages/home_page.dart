import 'package:ascolin/base/constant.dart';
import 'package:ascolin/model/action_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            TextField(
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
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
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
                  // width: 180,
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
            SizedBox(height: 10),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: actionItems.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                childAspectRatio: 0.85,
              ),
              itemBuilder: (context, index) {
                return ActionCard(
                  actionItem: actionItems[index],
                );
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final ActionModel actionItem;
  const ActionCard({
    super.key,
    required this.actionItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Constant.navigatePush(context, actionItem.nextPage);
      },
      child: Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey
                  .withOpacity(0.5), // Adjust the shadow color and opacity here
              spreadRadius: 1.5,
              blurRadius: 2,
              offset: Offset(0, 0), // Adjust the position of the shadow
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16),
          ),
          // height: height * 0.2,
          // width: width * 0.4,
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage(actionItem.icon),
                  color: Color(0xFF04009A),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  actionItem.label,
                  style: TextStyle(
                    color: Color(0xFF04009A),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  actionItem.description,
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
