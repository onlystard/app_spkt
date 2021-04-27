import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPageController extends GetxController {
  final TextEditingController textEditingController = TextEditingController();
  final TextEditingController textControllerNewPass = TextEditingController();
  final TextEditingController textcontrollerConfirmPass =
      TextEditingController();
  bool isNameValid = true;
  Color txtClolor = Colors.white;
  var txt = Text('save'.tr);
  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
    textControllerNewPass.dispose();
    textcontrollerConfirmPass.dispose();
  }
}
