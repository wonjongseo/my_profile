import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/sections/topSection/components/grass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GlassContent(size: size),
      ],
    );
  }
}
