import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class KeyController extends GetxController {
  static KeyController get to => Get.find();

  GlobalKey topKey = GlobalKey();
  GlobalKey aboutKey = GlobalKey();
  GlobalKey stacksKeyKey = GlobalKey();
  GlobalKey myProjectKey = GlobalKey();
  GlobalKey testimonialKey = GlobalKey();
  GlobalKey contactKey = GlobalKey();

  bool isShownStackCards = false;
  bool isShownProjectCards = false;
  late ScrollController scrollController;
  bool isShowAppBar = false;
  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollController.addListener(() {
      RenderBox aboutBox =
          aboutKey.currentContext!.findRenderObject() as RenderBox;
      Offset aboutBoxPosition = aboutBox.localToGlobal(Offset.zero);

      double animationHeight = scrollController.offset +
          aboutBoxPosition.dy -
          MediaQueryData.fromView(window).padding.top -
          56.0;
      if (scrollController.offset >= animationHeight - 10) {
        isShowAppBar = true;
        update();
      } else if (scrollController.offset < 900) {
        isShowAppBar = false;
        update();
      }
      if (scrollController.offset >= 400.0) {
        isShownStackCards = true;
        update();
      }

      if (scrollController.offset >= 1300.0) {
        isShownProjectCards = true;
        update();
      }
    });
  }
}
