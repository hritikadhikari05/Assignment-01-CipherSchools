import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipher_task/common/bottomNavigationBar.dart';
import 'package:cipher_task/common/customText.dart';
import 'package:cipher_task/common/homeAppBar.dart';
import 'package:cipher_task/pages/courses/controller/course.controller.dart';
import 'package:cipher_task/pages/courses/widgets/courseCard.dart';
import 'package:cipher_task/pages/courses/widgets/courseCardsRow.dart';
import 'package:cipher_task/pages/courses/widgets/coursesCrousels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:get/get.dart';

import '../../utils/storageService.dart';

class Courses extends StatelessWidget {
  Courses({super.key});
  CourseController courseController = Get.put(CourseController());
  @override
  Widget build(BuildContext context) {
    List items = [
      "Hello",
      " HI",
      " HI",
      " HI",
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: courseController.darkTheme
              ? Theme.of(context).colorScheme.background
              : Theme.of(context).colorScheme.primary,
          elevation: 0,
          leading: Container(
            padding: EdgeInsets.only(left: 10),
            child: Image.asset(
              "assets/images/logo.png",
              height: 40,
              width: 40,
            ),
          ),
          title: CustomText(
            text: "CipherSchools",
            color: Theme.of(context).colorScheme.background,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            Icon(
              Icons.trending_up_outlined,
              color: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(
              width: 10,
            ),
            Obx(
              () => DropdownButton(
                value: courseController.selectedValue.value,
                underline: Container(),
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                items: [
                  DropdownMenuItem(child: Text("Courses"), value: "Courses"),
                  DropdownMenuItem(child: Text("USA"), value: "USA"),
                  DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                  DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                  DropdownMenuItem(child: Text("England"), value: "England"),
                ],
                onChanged: (val) {
                  courseController.selectedValue.value = val!;
                },
              ),
            ),
            Obx(
              () => Switch(
                value: courseController.switchValue.value,
                onChanged: (val) {
                  courseController.switchValue.value = val;
                },
                activeThumbImage: AssetImage("assets/images/logo.png"),
                // thumbIcon: MaterialStateProperty.all(
                //   Icon(Icons.night_shelter),
                // ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CourseCrousels(),
                SizedBox(
                  height: 20,
                ),
                CourseCardRow(
                  title: "Recommended Course",
                ),
                CourseCardRow(
                  title: "Latest Videos",
                ),
                CourseCardRow(
                  title: "Popular Categories",
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "All Courses",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.background,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // CourseCard(),
                      GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.66,
                          mainAxisSpacing: 20,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, item) {
                          return CourseCard();
                        },
                        itemCount: 10,
                      ),

                      // Container(
                      //     height: 300,
                      //     // width: double.infinity,
                      //     child: LayoutGrid(
                      //       // set some flexible track sizes based on the crossAxisCount
                      //       columnSizes: [1.fr, 1.fr],
                      //       // set all the row sizes to auto (self-sizing height)
                      //       rowSizes: const [auto, auto],
                      //       rowGap: 40, // equivalent to mainAxisSpacing
                      //       columnGap: 40, // equivalent to crossAxisSpacing
                      //       // note: there's no childAspectRatio
                      //       children: [
                      //         // render all the cards with *automatic child placement*
                      //         for (var i = 0; i < items.length; i++)
                      //           CourseCardRow(),
                      //       ],
                      //     )),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const CustomBottomNavigationBar(),
        ],
      ),
    );
  }
}
