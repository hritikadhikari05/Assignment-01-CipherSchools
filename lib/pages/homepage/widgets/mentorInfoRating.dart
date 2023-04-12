import 'package:cipher_task/pages/homepage/widgets/ratingStar.dart';
import 'package:flutter/material.dart';

import '../../../common/customText.dart';

class MentorInfoRating extends StatelessWidget {
  const MentorInfoRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Row(
        children: [
          //Profile images
          Container(
            height: 40,
            width: 90,
            child: Stack(
              children: const [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    // backgroundColor: Colors.black,
                    backgroundImage: AssetImage("assets/images/menu.png"),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    // backgroundColor: Colors.black,
                    backgroundImage: AssetImage("assets/images/logo.png"),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/logo.png"),
                  ),
                ),
              ],
            ),
          ),
          //Mentor count
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "50+",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                CustomText(
                  text: "Mentors",
                  // fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ],
            ),
          ),
          //Divider
          Container(
            margin: const EdgeInsets.only(left: 10),
            height: 40,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          //Ratings
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              children: [
                CustomText(
                  text: "4.8/5",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                RatingStar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
