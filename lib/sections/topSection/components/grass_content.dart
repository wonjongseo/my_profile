import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/languages.dart';
import 'package:programmer_wonjongseo/responsive.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          width: double.infinity,
          constraints: BoxConstraints(
              maxWidth: Responsive.isDesktop(context) ? 1110 : 555,
              maxHeight: Responsive.isDesktop(context)
                  ? size.height * 0.7
                  : size.height * 0.3),
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                child: Text(
                  '- ${toTr('programmer_name')} -',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: Languagues.getFontFamily(),
                        fontSize: ResponsiveSize.sceenWidth10(context) * 8,
                      ),
                ),
              ),
              SizedBox(height: ResponsiveSize.sceenHeight10(context) * 2),
              Text(
                toTr('introduce'),
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: Languagues.getFontFamily(),
                      fontSize: ResponsiveSize.sceenWidth10(context) * 3.2,
                    ),
              ),
              SizedBox(height: ResponsiveSize.sceenHeight10(context)),
              Text(
                toTr('merit'),
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: Languagues.getFontFamily(),
                      fontSize: ResponsiveSize.sceenWidth10(context) * 3,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
