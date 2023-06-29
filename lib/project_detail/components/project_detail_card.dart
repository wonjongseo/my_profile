import 'package:flutter/cupertino.dart';
import 'package:programmer_wonjongseo/project_detail/components/project_detail_list.dart';
import 'package:programmer_wonjongseo/project_detail/components/project_detail_string.dart';

import '../../common/common.dart';
import '../../models/Project.dart';
import 'homepage_lisk_card.dart';

class ProjectDetailCard extends StatelessWidget {
  const ProjectDetailCard({Key? key, required this.project}) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: sectionTitleStyle(context).copyWith(fontSize: 16),
          ),
          const SizedBox(height: 20 / 4),
          Text(project.descriptionToLocale(project.index)),
          const SizedBox(height: 20 * 2),
          if (project.frontend != null)
            ProjectDetailString(
                detailTitle: project.frontend!, title: 'Front end'),
          if (project.backend != null)
            ProjectDetailString(
                detailTitle: project.backend!, title: 'Back end'),
          if (project.githubPath != null)
            HomePageLinkCard(
                projectTitle: project.title,
                text: 'Git Url',
                path: project.githubPath!),
          if (project.homepagePath != null)
            HomePageLinkCard(
                projectTitle: project.title,
                text: 'Try It',
                path: project.homepagePath!),
          if (project.specifications != null)
            ProjectDetailList(
              detailTitle: 'Specifications',
              list: project.specifications!,
              projectIndex: project.index,
            ),
          if (project.useThat != null)
            ProjectDetailList(
              detailTitle: 'Use It',
              list: project.useThat!,
              projectIndex: project.index,
            ),
        ],
      ),
    );
  }
}
