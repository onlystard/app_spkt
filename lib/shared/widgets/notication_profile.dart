import 'package:flutter/material.dart';

class BtnNotication extends StatefulWidget {
  @override
  _BtnNoticationState createState() => _BtnNoticationState();
}

class _BtnNoticationState extends State<BtnNotication> {
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
                  Icon(Icons.notifications_active),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Text("Thông báo")),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ],
      ),
      Visibility(
        visible: hide,
        child: Container(
          margin: EdgeInsets.only(left: 20),
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ListTile(
                title: Text('Thong bao 1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Thong bao 1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Thong bao 1'),
                onTap: () {},
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
