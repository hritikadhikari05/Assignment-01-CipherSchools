import 'package:flutter/material.dart';

import 'customText.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
        text: "Cipher Schools",
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      leading: Container(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 40,
              width: 40,
            ),
            // const SizedBox(width: 10),
          ],
        ),
      ),
      actions: [Image.asset("assets/images/menu.png")],
    );
  }
}
