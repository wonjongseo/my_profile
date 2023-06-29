import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/responsive.dart';

import '../../models/languages.dart';

class MyAboutDetails extends StatelessWidget {
  const MyAboutDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            SizedBox(height: ResponsiveSize.sceenHeight10(context) / 2),
            ZoomIn(
              child: const MyAboutDetail(
                category: 'name',
                description: 'programmer_name',
                iconData: FontAwesomeIcons.faceSmile,
              ),
            ),
            SizedBox(height: ResponsiveSize.sceenHeight10(context) / 2),
            ZoomIn(
              child: const MyAboutDetail(
                category: 'residence',
                description: 'programmer_residence',
                iconData: FontAwesomeIcons.houseUser,
              ),
            ),
            SizedBox(height: ResponsiveSize.sceenHeight10(context) / 2),
            ZoomIn(
              child: const MyAboutDetail(
                category: 'age',
                description: 'programmer_age',
                // ignore: deprecated_member_use
                iconData: FontAwesomeIcons.listNumeric,
              ),
            ),
            SizedBox(height: ResponsiveSize.sceenHeight10(context) / 2),
            ZoomIn(
              child: const MyAboutDetail(
                category: 'ablity',
                description: 'academic_abablity',
                iconData: FontAwesomeIcons.school,
              ),
            ),
          ],
        ));
  }
}

class MyAboutDetail extends StatelessWidget {
  const MyAboutDetail({
    super.key,
    required this.category,
    required this.description,
    required this.iconData,
  });
  final String category;
  final String description;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        toTr(description),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: ResponsiveSize.sceenHeight10(context) * 1.8,
        ),
      ),
      minLeadingWidth: 100,
      leading: Text(
        toTr(category),
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: ResponsiveSize.sceenHeight10(context) * 1.6,
        ),
      ),
      trailing: Icon(iconData),
    );
  }
}
