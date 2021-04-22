import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class ThongbaototnghiepView extends GetView<NoticationViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text('Thong bao tot nghiep')));
  }

  Container buildContainer() {
    return Container(
      padding: EdgeInsets.only(top: 7.0, bottom: 7.0),
      height: 1.0,
      color: Colors.grey,
    );
  }

  ListTile buildListTile(String text, String subtext) {
    return ListTile(
        leading: Icon(
          Icons.notifications_active_outlined,
          size: 35.0,
          color: Colors.lightBlue,
        ),
        tileColor: Colors.lightBlueAccent[50],
        title: Text("$text"),
        subtitle: Text("$subtext"),
        onTap: () => showToastNoti("hello"));
  }
}
