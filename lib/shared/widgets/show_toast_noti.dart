import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToastNoti(dynamic s){
  return Fluttertoast.showToast(
      msg: (s.toString()),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey[200],
      textColor: Colors.black,
      fontSize: 16.0
  );
}