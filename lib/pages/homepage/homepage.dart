import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipher_task/common/bottomNavigationBar.dart';
import 'package:cipher_task/common/customText.dart';
import 'package:cipher_task/common/homeAppBar.dart';
import 'package:cipher_task/pages/homepage/widgets/homepageButton.dart';
import 'package:cipher_task/pages/homepage/widgets/homepageCrouselCard.dart';
import 'package:cipher_task/pages/homepage/widgets/homepageIntro.dart';
import 'package:cipher_task/pages/homepage/widgets/mentorInfoRating.dart';
import 'package:cipher_task/pages/homepage/widgets/ratingStar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: HomeAppBar(),
        preferredSize: Size.fromHeight(60),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              // margin: const EdgeInsets.symmetric(
              //   horizontal: 20,
              //   vertical: 20,
              // ),
              // height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  HomepageIntro(),
                  MentorInfoRating(),
                  HomePageButton(),
                  SizedBox(
                    height: 20,
                  ),
                  HomepageCrousels(),
                  // HomepageCrousels(),
                ],
              ),
            ),
          ),
          CustomBottomNavigationBar()
        ],
      ),
      // bottomNavigationBar: ClipRRect(
      //   borderRadius: BorderRadius.circular(20),
      //   child: Container(
      //     // color: Colors.amber,
      //     // margin: EdgeInsets.symmetric(horizontal: 20),
      //     color: Colors.transparent,
      //     child: BottomNavigationBar(
      //       // fixedColor: Colors.amber,
      //       backgroundColor: Colors.amber,
      //       items: [
      //         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
