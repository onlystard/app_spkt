import 'package:app_spkt/core.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(name: Routes.HOME, page: () => MainView(), binding: MainBinding()),
    GetPage(
        name: Routes.CALENDAR,
        page: () => CalendarView(),
        binding: CalendarViewBinding()),
    GetPage(
        name: Routes.PROFILE,
        page: () => ProfileView(),
        binding: ProfileViewBinding()),
    GetPage(
        name: Routes.NOTICATION,
        page: () => NoticationView(),
        binding: NoticationViewBinding())
  ];
}
