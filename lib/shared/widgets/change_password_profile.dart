import 'package:app_spkt/pages/setting/change_password.dart';
import 'package:flutter/material.dart';

class BtChangePassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BtChangePasswordState();
  }
}

class _BtChangePasswordState extends State<BtChangePassword> {
  bool hide = false;
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: Colors.blueAccent,
      primary: Colors.white,
      padding: EdgeInsets.all(13),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))));
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextButton(
              style: flatButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePassword()),
                );
              },
              child: Row(
                children: [
                  Icon(Icons.admin_panel_settings),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Text("Change Password")),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
