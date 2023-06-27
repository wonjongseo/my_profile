import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About \nMe!',
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: kDefaultPadding * 1),
        Image.asset('assets/images/sign.png', fit: BoxFit.cover),
      ],
    );
  }
}
