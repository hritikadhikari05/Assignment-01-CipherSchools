import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
          size: 18,
        ),
        Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
          size: 18,
        ),
        Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
          size: 18,
        ),
        Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
          size: 18,
        ),
        Icon(
          Icons.star_border_outlined,
          color: Theme.of(context).primaryColor,
          size: 18,
        ),
      ],
    );
  }
}
