import 'package:flutter/material.dart';

class BtnViewProfile extends StatefulWidget {
  @override
  _BtnViewProfileState createState() => _BtnViewProfileState();
}

class _BtnViewProfileState extends State<BtnViewProfile> {
  bool hide = false;
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: Colors.blueGrey,
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
                setState(() {
                  hide = !hide;
                });
              },
              child: Row(
                children: [
                  Icon(Icons.account_box),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Text("Thông tin cá nhân")),
                  //Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ],
      ),
      Visibility(
        visible: hide,
        child: Container(
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ListTile(
                title: Text('NGUYEN VAN TEO - MSSV: 024921812'),
                onTap: () {},
              ),
              ListTile(
                title: Text('thông tin về sinh viên, thông tin về sinh viên, thông tin về sinh viên, thông tin về sinh viên, '),
                onTap: () {},
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
