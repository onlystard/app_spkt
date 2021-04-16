import 'package:get/get.dart';
import '../../core.dart';

class ProfileViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileViewController>(() => ProfileViewController());
  }
}
