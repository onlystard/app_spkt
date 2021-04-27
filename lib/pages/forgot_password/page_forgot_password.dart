import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class PageFogotPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PageFogotPasswordState();
  }
}

// ignore: camel_case_types
class PageFogotPasswordState extends State {
  // ignore: non_constant_identifier_names
  final TextEditingController _TextControllerUserName = TextEditingController();
  bool isNameValid = true;
  Color txtClolor = Colors.white;
  var txt = Text('Send');
  RegExp regExp = new RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+.");
  @override
  void dispose() {
    super.dispose();
    _TextControllerUserName.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userName = TextField(
      onChanged: (value) {},
      keyboardType: TextInputType.text,
      controller: _TextControllerUserName,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'enteryouremail'.tr,
        hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
      primary: txtClolor,
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
    );
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () => Get.back(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text('forgotpassword'.tr),
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
                onPressed: () => Get.snackbar(
                    'Forgot password', 'Gui thanh cong',
                    snackPosition: SnackPosition.BOTTOM),
                child: txt,
                style: flatButtonStyle,
              )
            ],
          ),
        ));
  }

  Map<String, String> headers = {"Content-type": "application/json"};
}
