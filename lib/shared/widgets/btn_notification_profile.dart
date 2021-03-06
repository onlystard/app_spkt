import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BtnNotication extends StatefulWidget {
  @override
  _BtnNoticationState createState() => _BtnNoticationState();
}

class _BtnNoticationState extends State<BtnNotication> {
  bool hide = false;
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: Colors.white38,
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
              onPressed: () {
                setState(() {
                  hide = !hide;
                });
              },
              child: Row(
                children: [
                  Icon(Icons.notifications_active, color: Colors.black),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      "notification".tr,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),

                  // Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ],
      ),
      Visibility(
        visible: hide,
        child: Container(
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ListTile(
                title: Text('thongbaogiangvien'.tr),
                onTap: () {},
              ),
              ListTile(
                title: Text('thongbaolophocphan'.tr),
                onTap: () {},
              ),
              ListTile(
                title: Text('thongbaolop'.tr),
                onTap: () {},
              ),
              ListTile(
                title: Text('thongbaodaotao'.tr),
                onTap: () {},
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
