import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core.dart';

class MainView extends GetView<MainController> {
  const MainView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageCotroller,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeView(),
          NoticationView(),
          CalendarView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: ValueBuilder<int>(
        initialValue: 0,
        builder: (value, updateFn) => Container(
          color: Colors.grey[200],
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Color(0xFFF0F0F0),
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(color: Colors.teal[600]),
            type: BottomNavigationBarType.fixed,
            items: controller.navigationItems,
            currentIndex: value,
            onTap: (tab) {
              controller.pageCotroller.animateToPage(
                tab,
                duration: controller.animationDuration,
                curve: Curves.ease,
              );

              updateFn(tab);
            },
          ),
        ),
      ),
    );
  }
}
