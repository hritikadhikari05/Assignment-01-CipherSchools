import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/customText.dart';

class HomepageIntro extends StatelessWidget {
  const HomepageIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 40, top: 60),
          child: RichText(
            text: TextSpan(
                text: "Welcome to",
                style: GoogleFonts.openSans(
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                children: [
                  TextSpan(
                    text: " the Future",
                    style: GoogleFonts.openSans(
                      fontSize: 40,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: " of Learning",
                    style: GoogleFonts.openSans(
                      fontSize: 38,
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomText(
          text: "Start learning by best creators for",
          fontSize: 18,
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w400,
        ),
        const SizedBox(
          height: 10,
        ),
        DefaultTextStyle(
          style: GoogleFonts.openSans(
            fontSize: 22.0,
            color: Theme.of(context).primaryColor,
          ),
          child: AnimatedTextKit(
            isRepeatingAnimation: true,
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText('absolutely Free'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ],
    );
  }
}
