// import 'package:calories_detection_system/common/extension.dart';
import 'package:calories_detection_system/common/extension.dart';
import 'package:calories_detection_system/widgets/on_boarding_page.dart';
import 'package:flutter/material.dart';

class OnBoardingFuction extends StatefulWidget {
  const OnBoardingFuction({super.key});

  @override
  State<OnBoardingFuction> createState() => _OnBoardingFuctionState();
}

class _OnBoardingFuctionState extends State<OnBoardingFuction> {
  int selectedPage = 0;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      selectedPage = controller.page?.round() ?? 0;

      setState(() {});
    });
  }

  List pageDetails = [
    {
      "title": "Track Your Calorie Now",
      "subtitle":
          "Don't worry if your get challenge in tracking your calories, we here to help your for good",
      "image": "assets/img/on_1.png"
    },
    {
      "title": "Scan Your Meal",
      "subtitle":
          "Just take a photo of your food and let our AI calculate the calories for you instantly",
      "image": "assets/img/on_2.png"
    },
    {
      "title": "Set Your Goals",
      "subtitle":
          "Whether you want to lose weight, gain muscle, or maintain your shape, we’ve got you covered",
      "image": "assets/img/on_3.png"
    },
    {
      "title": "Track Your Progress",
      "subtitle":
          "Stay motivated by seeing your daily, weekly, and monthly calorie insights at a glance",
      "image": "assets/img/on_4.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
              controller: controller,
              itemCount: pageDetails.length,
              itemBuilder: (context, index) {
                var obPointer = pageDetails[index] as Map? ?? {};
                return OnBoardingPage(
                  obPointer: obPointer,
                );
              }),
          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(
                    color: Tcolor.primary1,
                    value: selectedPage / 4,
                    strokeWidth: 2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  decoration: Tstyle.buttonDecoration,
                  child: IconButton(
                      onPressed: () {
                        if (selectedPage < 3) {
                          selectedPage = selectedPage + 1;
                          controller.jumpToPage(selectedPage);
                          setState(() {});
                          //open welcome page
                        } else {
                          print("open");
                        }
                      },
                      icon: Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
