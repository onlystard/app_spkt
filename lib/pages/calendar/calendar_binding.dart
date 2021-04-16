import 'package:get/get.dart';

import '../../core.dart';

class CalendarViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalendarViewController>(() => CalendarViewController());
  }
}
