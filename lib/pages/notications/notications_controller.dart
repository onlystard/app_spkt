import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class NoticationViewController extends GetxController {
  TabController tabController;
  List<Tab> listTabItems;
  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    listTabItems = TabBarList().getNavigationItemList();
    // tabController = TabController(length: listTabItems.length, vsync: this);
    super.onInit();
  }
}
