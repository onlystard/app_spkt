import 'package:app_spkt/core.dart';
import 'package:app_spkt/pages/login/login_binding.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;
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
      binding: NoticationViewBinding(),
    ),
    GetPage(
        name: Routes.FORM, page: () => FormView(), binding: FormViewBinding()),
    GetPage(
        name: Routes.LOGIN, page: () => PageLogin(), binding: LoginBinding()),
    GetPage(name: Routes.VIEWPROFILE, page: () => ProfileViewPage()),
    GetPage(name: Routes.FORGOTPASSWORD, page: () => PageFogotPassword()),
    GetPage(name: Routes.CHANGEPASSWORD, page: () => ChangePasswordPage()),
  ];
}
