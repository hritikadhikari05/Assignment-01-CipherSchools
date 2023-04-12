import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../common/customText.dart';

class HomepageCrousels extends StatelessWidget {
  const HomepageCrousels({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          // height: 350,

          autoPlay: true,
          // scrollPhysics: ClampingScrollPhysics(),
        ),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(
                              "assets/images/logo.png",
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              // SizedBox(
                              //   height: 40,
                              // ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                ),
                                margin: EdgeInsets.only(top: 24),
                                child: Center(
                                  child: CustomText(
                                    text: "Free",
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  right: 54,
                                ),
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 80,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //Card Body Section
                      CustomText(
                        text: "Earn\nCipherPoints",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.background,
                        //
                      ),
                      CustomText(
                        text: "Earn exclusive rewards by learning with us",
                        fontSize: 14,
                        // fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.background,
                        //
                      ),
                    ],
                  ));
            },
          );
        }).toList(),
      ),
    );
  }
}
