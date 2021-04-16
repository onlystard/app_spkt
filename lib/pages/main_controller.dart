import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core.dart';

class MainController extends GetxController {
  final pageCotroller = PageController();
  final animationDuration = Duration(microseconds: 300);
  List<BottomNavigationBarItem> navigationItems;
  @override
  void onInit() {
    navigationItems = NavigationService().getNavigationItemList();

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    pageCotroller.dispose();
    Get.delete();
    super.onClose();
  }
}
