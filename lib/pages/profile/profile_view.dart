import 'package:app_spkt/core.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends GetView<ProfileViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blueGrey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Stack(
                            clipBehavior: Clip.none,
                            children: <Widget>[
                              Positioned(
                                right: -40.0,
                                top: -40.0,
                                child: InkResponse(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ),
                              Form(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    BtEditProfile(),
                                    BtChangePassword(),
                                    BtnLogOut(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('ngonngu1'.tr),
                                        Obx(() => DropdownButton(
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text('vi'),
                                                  value: 'vi',
                                                ),
                                                DropdownMenuItem(
                                                  child: Text('en'),
                                                  value: 'en',
                                                )
                                              ],
                                              value:
                                                  controller.selectedLang.value,
                                              onChanged: (value) {
                                                controller.selectedLang.value =
                                                    value;
                                                Get.updateLocale(Locale(
                                                    controller
                                                        .selectedLang.value));
                                              },
                                            )),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "name app, version 1.0.1 @2021",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Power by SDC",
                                          style: TextStyle(color: Colors.grey)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Icon(
                  Icons.settings_outlined,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          buildAvatarProfile('Tan'),
          SizedBox(
            height: 20.0,
          ),
          BtnSetting(
            icon: Icons.contact_page,
            text: 'thongtin'.tr,
            press: () => Get.toNamed(Routes.VIEWPROFILE),
          ),
          BtnNotication(),
          BtnSetting(
            text: 'daotao'.tr,
            icon: Icons.school_outlined,
          ),
          BtnSetting(
            text: 'bangdiem'.tr,
            icon: Icons.control_point,
          ),
          BtnSetting(
            text: 'lichthi'.tr,
            icon: Icons.calendar_today,
          ),
          BtnSetting(text: 'hocphi'.tr, icon: Icons.point_of_sale),
          BtnSetting(text: 'danhsachlop'.tr, icon: Icons.list),
        ],
      ),
    ));
  }

  Row buildTitleSetting(String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Row buildAvatarProfile(String name) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'myprofile'.tr,
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.lightBlueAccent),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$name',
              style: TextStyle(fontSize: 13.0, color: Colors.blueGrey),
            )
          ],
        ),
        Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90.0),
              border: Border.all(width: 1, color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.2),
                  blurRadius: 12,
                  spreadRadius: 8,
                )
              ],
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   image: NetworkImage(
              //       ''),
              // )
            )),
      ],
    );
  }
}
