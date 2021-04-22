import 'package:app_spkt/core.dart';
import 'package:app_spkt/pages/profile/profile_controller.dart';
import 'package:app_spkt/shared/widgets/change_password_profile.dart';
import 'package:app_spkt/shared/widgets/edit_profile.dart';
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
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Stack(
                              overflow: Overflow.visible,
                              children: <Widget>[
                                Positioned(
                                  right: -40.0,
                                  top: -40.0,
                                  child: InkResponse(
                                    onTap: () {
                                      Navigator.of(context).pop();
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
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("name app, version 1.0.1 @2021", style: TextStyle(color: Colors.grey),),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("Power by SDC", style: TextStyle(color: Colors.grey)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                    );
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
            buildAvatarProfile(''),
            SizedBox(
              height: 20.0,
            ),
            BtnViewProfile(),
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
            )
        ),
      ],
    );
  }
}
