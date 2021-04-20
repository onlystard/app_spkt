import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core.dart';

class BtnLogOut extends StatefulWidget {
  @override
  _BtnLogOutState createState() => _BtnLogOutState();
}

class _BtnLogOutState extends State<BtnLogOut> {
  bool hide = false;
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: Colors.grey,
      primary: Colors.white,
      padding: EdgeInsets.all(13),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))));
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextButton(
              style: flatButtonStyle,
              onPressed: () => Get.toNamed(Routes.HOME),
              child: Row(
                children: [
                  Icon(Icons.login_sharp),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Text("Đăng xuất")),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}