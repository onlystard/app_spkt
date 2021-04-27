import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class ChangePasswordPage extends GetView<SettingPageController> {
  @override
  Widget build(BuildContext context) {
    final userName = TextField(
      onChanged: (value) {},
      keyboardType: TextInputType.text,
      controller: controller.textControllerNewPass,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'newpass'.tr,
        hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );

    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
      primary: controller.txtClolor,
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
    );
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Get.back();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text('doimatkhau'.tr),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0, right: 30.0),
                child: userName,
              ),
              SizedBox(
                height: 30.0,
              ),
              TextButton(
                onPressed: () =>
                    Get.snackbar('doi thanh cong', 'doi thanh cong'),
                style: flatButtonStyle,
                child: controller.txt,
              ),
            ],
          ),
        ));
  }
}
