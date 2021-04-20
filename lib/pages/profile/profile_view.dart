import 'package:app_spkt/core.dart';
import 'package:app_spkt/pages/profile/profile_controller.dart';
import 'package:app_spkt/shared/widgets/log_out_profile.dart';
import 'package:app_spkt/shared/widgets/notication_profile.dart';
import 'package:app_spkt/shared/widgets/setting_profile.dart';
import 'package:app_spkt/shared/widgets/viewprofile_profile.dart';
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
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    print('setting');
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
            buildAvatarProfile('Pham Thien Tan'),
            SizedBox(
              height: 20.0,
            ),
            buildTitleSetting('Account'),
            BtnViewProfile(),

            BtnSetting(
              icon: Icons.transit_enterexit,
              text: 'Bảng điểm',
              press: () {},
            ),
            BtnSetting(
              icon: Icons.point_of_sale_rounded,
              text: 'Học phí',
              press: () {},
            ),
            BtnSetting(
              icon: Icons.calendar_today_sharp,
              text: 'Lịch Thi',
              press: () {},
            ),
            BtnSetting(
              icon: Icons.list,
              text: 'Danh sách lớp học phần đăng ký',
              press: () {},
            ),
            BtnNotication(),
            BtnLogOut(),
          ],
        ),
      )
    );
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
              'My Profile',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
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
            )
        ),
      ],
    );
  }
}
