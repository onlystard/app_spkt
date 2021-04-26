import 'package:flutter/material.dart';

class BtEditProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BtEditProfileState();
  }
}

class _BtEditProfileState extends State<BtEditProfile> {
  bool hide = false;
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: Colors.indigoAccent,
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
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.eco),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Text("Edit Profile")),
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
