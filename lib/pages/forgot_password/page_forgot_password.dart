import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class PageFogotPassword extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageFogotPasswordState();
  }
}
// ignore: camel_case_types
class PageFogotPasswordState extends State{
  // ignore: non_constant_identifier_names
  final TextEditingController _TextControllerUserName = TextEditingController();
  bool isNameValid = true;
  Color txtClolor = Colors.white;
  var txt = Text('Send');
  RegExp regExp = new RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+.") ;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _TextControllerUserName.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final userName = TextField(
      onChanged: (value){
      },
      keyboardType: TextInputType.text,
      controller: _TextControllerUserName,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'Enter your Email...',
          hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
    final sendButton = new FlatButton(
      child: txt,
      textColor: txtClolor,
      color: Theme.of(context).primaryColor,
      splashColor: Colors.white,
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      onPressed: () async{
      },
    );
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {  Navigator.pop(context); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text('Forgot password'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0,),
              Container(
                margin: EdgeInsets.only(left: 30.0, right: 30.0),
                child: userName,
              ),
              SizedBox(height: 30.0,),
              sendButton
            ],
          ),
        )
    );
  }
  Map<String, String> headers = {"Content-type": "application/json"};
}