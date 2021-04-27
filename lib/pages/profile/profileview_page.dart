import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class ProfileViewPage extends GetView<ProfileViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'thongtin'.tr,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            buildContainerInfo(context, 'Ten sinh vien'),
            buildContainerInfo(context, 'Ten sinh vien'),
            buildContainerInfo(context, 'Ten sinh vien'),
            buildContainerInfo(context, 'Ten sinh vien')
          ],
        ),
      ),
    );
  }

  Card buildCardLearn(int tinchi, int tinchitotal) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    "DONE",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "$tinchi",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "TOTAL",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "$tinchitotal",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainerInfo(BuildContext context, String text) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
          margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          elevation: 2.0,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              child: Text(
                "$text",
                style:
                    TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.w700),
              ))),
    );
  }
}
