import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class FormView extends GetView<FormViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.list,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Danh sách biểu mẫu của sinh viên',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            buildListTile('bieu mau', "bieu mau cua sinh vien"),
            buildContainer(),
            buildListTile('bieu mau', "bieu mau cua sinh vien"),
            buildContainer(),
            buildListTile('bieu mau', "bieu mau cua sinh vien"),
            buildContainer(),
            buildListTile('bieu mau', "bieu mau cua sinh vien"),
            buildContainer(),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(String text, String subtext) {
    return ListTile(
        leading: Icon(
          Icons.arrow_right,
          size: 35.0,
          color: Colors.lightBlue,
        ),
        tileColor: Colors.lightBlueAccent[50],
        title: Text("$text"),
        subtitle: Text("$subtext"),
        onTap: () => showToastNoti("hello"));
  }

  Container buildContainer() {
    return Container(
      padding: EdgeInsets.only(top: 7.0, bottom: 7.0),
      height: 1.0,
      color: Colors.grey,
    );
  }
}
