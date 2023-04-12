import 'package:cipher_task/pages/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/courses/courser.dart';
import 'customText.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        // decoration: BoxDecoration(),
        height: 70,
        width: double.infinity,
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.offAll(() => HomePage());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home),
                      CustomText(
                        text: "Home",
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.offAll(() => Courses());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.book_outlined),
                      CustomText(
                        text: "Courses",
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.trending_up_rounded),
                    CustomText(
                      text: "Trending",
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person),
                    CustomText(
                      text: "My profile",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
