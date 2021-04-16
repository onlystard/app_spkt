import 'package:get/get.dart';

import '../../core.dart';

class NoticationViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoticationViewController>(() => NoticationViewController());
  }
}
