import 'package:get/get.dart';

import '../../core.dart';

class FormViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormViewController>(() => FormViewController());
  }
}
