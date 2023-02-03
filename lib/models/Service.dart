import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;
  final List<String> language;

  Service(
      {required this.id,
      required this.language,
      required this.title,
      required this.image,
      required this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Back End",
    image: "assets/images/graphic.png",
    color: Color(0xFFD9FFFC),
    language: ['Java', 'Python', 'NodeJs', 'GraphQL'],
  ),
  Service(
    id: 2,
    title: "Front End",
    image: "assets/images/desktop.png",
    color: Color(0xFFE4FFC7),
    language: [
      'Dart',
      'Java Script',
      'Type Script',
      'HTML,CSS',
    ],
  ),
  Service(
    id: 3,
    title: "Frame Work",
    image: "assets/images/ui.png",
    color: Color(0xFFFFF3DD),
    language: [
      'Spring frame work',
      'Express',
      'Flutter',
      'React JS',
      'Vue',
    ],
  ),
  Service(
    id: 4,
    title: "Language",
    image: "assets/images/Intreaction_design.png",
    color: Color(0xFFFFE0E0),
    language: ['Korean', 'Japanese', 'English'],
  ),
];
