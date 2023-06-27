import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SLanguage {
  String name;
  Widget icon;
  SLanguage({
    required this.name,
    required this.icon,
  });
}

class Service {
  final int id;
  final String title, image;
  final Color color;
  final List<SLanguage> language;

  Service(
      {required this.id,
      required this.language,
      required this.title,
      required this.image,
      required this.color});
}

String imageUrl = 'assets/images/stack';

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Back End",
    image: "$imageUrl/icons8-server-100.png",
    color: const Color(0xFFD9FFFC),
    language: [
      SLanguage(
        name: 'Spring frame work',
        icon: Image(image: AssetImage('$imageUrl/icons8-spring-48.png')),
      ),
      SLanguage(
        name: 'Java',
        icon: Image(image: AssetImage('$imageUrl/icons8-java-48.png')),
      ),
      SLanguage(
        name: 'Python',
        icon: Image(image: AssetImage('$imageUrl/icons8-python-48.png')),
      ),
      SLanguage(
        name: 'Express',
        icon: Image(image: AssetImage('$imageUrl/icons8-python-48.png')),
      ),
      SLanguage(
        name: 'NodeJs',
        icon: Image(image: AssetImage('$imageUrl/icons8-nodejs-48.png')),
      ),
      SLanguage(
        name: 'GraphQL',
        icon: Image(image: AssetImage('$imageUrl/icons8-graphql-48.png')),
      ),
    ],
  ),
  Service(
    id: 2,
    title: "Front End",
    image: "$imageUrl/icons8-fontend-100.png",
    color: const Color(0xFFE4FFC7),
    language: [
      SLanguage(
        name: 'Flutter',
        icon: Image(image: AssetImage('$imageUrl/icons8-flutter-48.png')),
      ),
      SLanguage(
        name: 'Dart',
        icon: Image(image: AssetImage('assets/images/dart.png')),
      ),
      SLanguage(
        name: 'React',
        icon: Image(image: AssetImage('$imageUrl/icons8-react-40.png')),
      ),
      SLanguage(
        name: 'React Native',
        icon: Image(image: AssetImage('$imageUrl/icons8-react-native-64.png')),
      ),
      SLanguage(
        name: 'Vue',
        icon: Image(image: AssetImage('$imageUrl/icons8-vue-js-48.png')),
      ),
      SLanguage(
        name: 'Java Script',
        icon: Image(image: AssetImage('$imageUrl/icons8-javascript-48.png')),
      ),
      SLanguage(
        name: 'Type Script',
        icon: Image(image: AssetImage('$imageUrl/icons8-typescript-48.png')),
      ),
      SLanguage(
        name: 'HTML',
        icon: Image(image: AssetImage('$imageUrl/icons8-html-48.png')),
      ),
      SLanguage(
        name: 'CSS',
        icon: Image(image: AssetImage('$imageUrl/icons8-css-48.png')),
      ),
    ],
  ),
  // Service(
  //   id: 3,
  //   title: "Frame Work",
  //   image: "assets/images/desktop.png",
  //   color: const Color(0xFFFFF3DD),
  //   language: [

  //   ],
  // ),
  Service(
    id: 4,
    title: "Language",
    image: "$imageUrl/icons8-language-100.png",
    color: const Color(0xFFFFE0E0),
    language: [
      SLanguage(
        name: 'Korean',
        icon: Image(image: AssetImage('$imageUrl/icons8-south-korea-48.png')),
      ),
      SLanguage(
        name: 'Japanese',
        icon: Image(image: AssetImage('$imageUrl/icons8-japan-48.png')),
      ),
      SLanguage(
        name: 'English',
        icon: Image(image: AssetImage('$imageUrl/icons8-usa-48.png')),
      ),
    ],
  ),
];
