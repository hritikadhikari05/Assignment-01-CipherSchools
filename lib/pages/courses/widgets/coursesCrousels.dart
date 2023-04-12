import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CourseCrousels extends StatelessWidget {
  const CourseCrousels({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://d3gmywgj71m21w.cloudfront.net/306a552a34c7762774714314c8af278c',
      'https://d3gmywgj71m21w.cloudfront.net/b56478012cc3e25dbb08f311c37c3c7b',
      'https://d3gmywgj71m21w.cloudfront.net/PROGRAMMING.png'
    ];
    return Container(
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 0.9,
            pauseAutoPlayOnTouch: true,
          ),
          items: imgList
              .map((item) => Container(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                    color: Colors.white,
                  ))
              .toList(),
        ));
  }
}
