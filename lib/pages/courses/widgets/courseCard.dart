import 'package:flutter/material.dart';

import '../../../common/customText.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Card(
        color: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Container(
          // padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
                child: SizedBox(
                  height: 150,
                  width: 250,
                  child: Image.network(
                    "https://ik.imagekit.io/cipherschools/CipherSchools/languify-1",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "Web Development",
                          fontSize: 12,
                        ),
                      ),
                    ),
                    CustomText(
                      text: "Free IELTS/TOFEL",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.background,
                    ),
                    CustomText(
                      text: "AI generated feedback and ....",
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.background,
                      // fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "Test duration: 30 mins /3....",
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.background,
                      // fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Languify",
                              color: Theme.of(context).colorScheme.background,
                              fontSize: 15,
                            ),
                            CustomText(
                              text: "express and excel",
                              color: Theme.of(context).colorScheme.background,
                              fontSize: 10,
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
