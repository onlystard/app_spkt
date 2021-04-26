import 'package:get/get.dart';
import '../core.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
    Get.put<HomeViewController>(HomeViewController());
    Get.put<ProfileViewController>(ProfileViewController());
    Get.put<CalendarViewController>(CalendarViewController());
    Get.put<NoticationViewController>(NoticationViewController());
    Get.put<LoginController>(LoginController());
  }
}
