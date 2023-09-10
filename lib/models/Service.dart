import 'package:flutter/material.dart';

class SLanguage {
  String name;
  String iconPath;
  SLanguage({
    required this.name,
    required this.iconPath,
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
    title: "Backend",
    image: "$imageUrl/icons8-server-100.png",
    color: const Color(0xFFD9FFFC),
    language: [
      SLanguage(
        name: 'Spring frame work', // ok
        iconPath: '$imageUrl/icons8-spring-48.png',
      ),
      SLanguage(
        name: 'Python',
        iconPath: '$imageUrl/icons8-python-48.png',
      ),
      SLanguage(
        name: 'NodeJs',
        iconPath: '$imageUrl/icons8-nodejs-48.png', //ok
      ),
      SLanguage(
        name: 'GraphQL',
        iconPath: '$imageUrl/icons8-graphql-48.png',
      ),
      SLanguage(
        name: 'MariaDB',
        iconPath: '$imageUrl/icons8-mariadb-48.png',
      ),
      SLanguage(
        name: 'MongoDB',
        iconPath: '$imageUrl/icons8-mongodb-48.png',
      ),
      SLanguage(
        name: 'MySQL',
        iconPath: '$imageUrl/icons8-mysql-ロゴ-48.png',
      ),
      SLanguage(
        name: 'Prisma',
        iconPath: '$imageUrl/icons8-prisma-orm-48.png',
      ),
      SLanguage(
        name: 'Postgress',
        iconPath: '$imageUrl/icons8-postgreesql-48.png',
      ),
    ],
  ),
  Service(
    id: 2,
    title: "Frontend",
    image: "$imageUrl/icons8-fontend-100.png",
    color: const Color(0xFFE4FFC7),
    language: [
      SLanguage(
        name: 'Flutter', //ok
        iconPath: '$imageUrl/icons8-flutter-48.png',
      ),
      SLanguage(
        name: 'Dart', //ok
        iconPath: '$imageUrl/icons8-dart-48.png',
      ),
      SLanguage(
        name: 'React', //ok
        iconPath: '$imageUrl/icons8-react-40.png', // ok
      ),
      SLanguage(
        name: 'React Native', // ok
        iconPath: '$imageUrl/icons8-react-native-48.png',
      ),
      SLanguage(
        name: 'Vue', // ok
        iconPath: '$imageUrl/icons8-vue-js-48.png',
      ),
      SLanguage(
        name: 'Java Script', //ok
        iconPath: '$imageUrl/icons8-javascript-48.png',
      ),
      SLanguage(
        name: 'Type Script',
        iconPath: '$imageUrl/icons8-typescript-48.png',
      ),
      SLanguage(
        //ok
        name: 'HTML',
        iconPath: '$imageUrl/icons8-html-48.png',
      ),
      SLanguage(
        //ok
        name: 'CSS',
        iconPath: '$imageUrl/icons8-css-48.png',
      ),
      SLanguage(
        name: 'SCSS',
        iconPath: '$imageUrl/icons8-sass-48.png',
      ),
    ],
  ),
  Service(
    id: 3,
    title: "Language",
    image: "$imageUrl/icons8-language-100.png",
    color: const Color(0xFFFFE0E0),
    language: [
      SLanguage(
        name: 'Java', //ok
        iconPath: '$imageUrl/icons8-java-48.png',
      ),
      SLanguage(
        name: 'C', // ok
        iconPath: '$imageUrl/icons8-cプログラミング-48.png',
      ),
      SLanguage(
        name: 'C++', // ok
        iconPath: '$imageUrl/icons8-c++-48.png',
      ),
      SLanguage(
        name: 'Korean',
        iconPath: '$imageUrl/icons8-south-korea-48.png',
      ),
      SLanguage(
        name: 'Japanese',
        iconPath: '$imageUrl/icons8-japan-48.png',
      ),
      SLanguage(
        name: 'English',
        iconPath: '$imageUrl/icons8-usa-48.png',
      ),
    ],
  ),
  Service(
    id: 4,
    title: "Tool",
    image: "$imageUrl/icons8-tool-100.png",
    color: Color(0xFF4F709C),
    language: [
      SLanguage(
        name: 'Tomcat',
        iconPath: '$imageUrl/icons8-tomcat-48.png',
      ),
      SLanguage(
        name: 'VScode',
        iconPath: '$imageUrl/icons8-visual-studio-48.png',
      ),
      SLanguage(
        name: 'Dockor',
        iconPath: '$imageUrl/icons8-デッカー-48.png',
      ),
      SLanguage(
        name: 'Android Studio',
        iconPath: '$imageUrl/icons8-android-studio-48.png',
      ),
      SLanguage(
        name: 'Git',
        iconPath: '$imageUrl/icons8-git-48.png',
      ),
      SLanguage(
        name: 'IntelliJ',
        iconPath: '$imageUrl/icons8-intellij-idea-48.png',
      ),
      SLanguage(
        name: 'Postman',
        iconPath: '$imageUrl/icons8-postman-48.png',
      ),
      SLanguage(
        name: 'AWS',
        iconPath: '$imageUrl/icons8-amazon-web-services-48.png',
      ),
      SLanguage(
        name: 'Netlify',
        iconPath: '$imageUrl/icons8-netlify-48.png',
      ),
      SLanguage(
        name: 'Heroku',
        iconPath: '$imageUrl/icons8-heroku-48.png',
      ),
    ],
  ),
];
