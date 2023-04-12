import 'package:flutter/material.dart';

import '../../../common/customText.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: "Start Learning Now",
            color: Theme.of(context).colorScheme.background,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          Icon(
            Icons.arrow_right_alt_outlined,
            color: Theme.of(context).colorScheme.background,
          )
        ],
      ),
    );
  }
}
