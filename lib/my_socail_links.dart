import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/socal_card.dart';
import 'package:url_launcher/url_launcher.dart';

class MySocialLinks extends StatelessWidget {
  const MySocialLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1110,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          SocalCard(
            iconSrc: 'assets/gif/icons8-instargram.gif',
            name: 'Instargram',
            color: Colors.pinkAccent,
            press: () {
              launchUrl(
                Uri.parse('https://www.instagram.com/w_jong_s/'),
              );
            },
          ),
          SocalCard(
            iconSrc: 'assets/gif/icons8-facebook.gif',
            name: 'Facebook',
            color: const Color(0xFFD9FFFC),
            press: () {
              launchUrl(
                Uri.parse('https://www.facebook.com/visionwill'),
              );
            },
          ),
          SocalCard(
            iconSrc: 'assets/gif/icons8-notion.gif',
            name: 'Notion',
            color: const Color(0xFFE4FFC7),
            press: () {
              launchUrl(
                Uri.parse(
                    'https://woolly-clownfish-678.notion.site/Web-Developer-431e3c2297054ffda0f704f3fee5b8c9'),
              );
            },
          ),
          SocalCard(
            iconSrc: 'assets/gif/icons8-github.gif',
            color: const Color(0xFFEBF0F9),
            name: 'Github',
            press: () {
              launchUrl(
                Uri.parse('https://github.com/wonjongseo'),
              );
            },
          )
        ],
      ),
    );
  }
}
