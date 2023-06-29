import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/common/common.dart';
import 'package:programmer_wonjongseo/common/dialog.dart';
import 'package:programmer_wonjongseo/models/CorporationProjects.dart';

import 'report/report_screen.dart';

class CorporationProjectCard extends StatelessWidget {
  const CorporationProjectCard({super.key, required this.corporationProject});
  final Corporation corporationProject;
  @override
  Widget build(BuildContext context) {
    var secondaryColor;
    return Container(
      width: 350,
      padding: const EdgeInsets.all(20),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            corporationProject.name,
            style: sectionTitleStyle(context),
          ),
          Text(corporationProject.source),
          const SizedBox(height: 20 / 2),
          Text(
            corporationProject.description,
            maxLines: 4,
            style: const TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 20),
          TextButton(
              onPressed: () {
                openProjectDialog(context, corporationProject,
                    child: ReportSceen(
                      corporation: corporationProject,
                    ));
              },
              child: const Text(
                'Read Report >>',
                style: TextStyle(color: primaryColor),
              ))
        ],
      ),
    );
  }
}
