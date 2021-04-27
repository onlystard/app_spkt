import 'package:get/get.dart';

import '../../core.dart';

class SettingPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SettingPageController>(SettingPageController());
  }
}
