import 'package:flutter/cupertino.dart';

import '../../common/common.dart';

class ProjectDetailString extends StatelessWidget {
  const ProjectDetailString({
    Key? key,
    required this.detailTitle,
    required this.title,
  }) : super(key: key);
  final String detailTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: sectionTitleStyle(context).copyWith(fontSize: 16),
        ),
        const SizedBox(height: 20 / 4),
        Text(
          detailTitle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20 * 2),
      ],
    );
  }
}
