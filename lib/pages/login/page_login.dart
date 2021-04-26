import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core.dart';

class PageLogin extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() async {
      return (await showDialog(
            context: context,
            builder: (context) => new AlertDialog(
              title: new Text('Are you sure?'),
              content: new Text('Do you want to exit app ?'),
              actions: <Widget>[
                new TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: new Text(
                    'No',
                  ),
                ),
                new TextButton(
                  onPressed: () {
                    Future.delayed(const Duration(milliseconds: 1000), () {
                      SystemChannels.platform
                          .invokeMethod('SystemNavigator.pop');
                    });
                  },
                  child: new Text(
                    'Yes',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          )) ??
          false;
    }

    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
      primary: Colors.white,
      padding: EdgeInsets.only(left: 50, right: 50),
    );
    final _username = TextField(
      onChanged: (value) {},
      keyboardType: TextInputType.text,
      controller: controller.textControllerUserName,
      autofocus: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_box),
        hintText: 'Enter your username...',
        hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
    final _btnpassword = Obx(() => TextField(
          onChanged: (value) {},
          autofocus: false,
          obscureText: controller.isObscure.value,
          controller: controller.textControllerPassword,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(controller.isObscure.value
                  ? Icons.visibility
                  : Icons.visibility_off),
              onPressed: () {
                controller.isObscure.value = !controller.isObscure.value;
              },
            ),
            prefixIcon: Icon(Icons.vpn_key),
            hintText: 'Enter your Password...',
            hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ));
    final _loginButton = new TextButton(
      child: Text("Login"),
      style: flatButtonStyle,
      onPressed: () => Get.off(() => MainView()),
    );
    final _forgotLabel = TextButton(
        child: Text(
          'Forgot password',
          style: TextStyle(color: Colors.black54, fontSize: 15.0),
        ),
        onPressed: () => Get.toNamed(Routes.FORGOTPASSWORD));
    return WillPopScope(
        onWillPop: _onWillPop,
        child: new Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ute.png'),
                              fit: BoxFit.fill)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 15.0, top: 15.0),
                      child: Column(
                        children: <Widget>[
                          FadeAnimation(
                              1.8,
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Color.fromRGBO(143, 148, 251, .2),
                                          blurRadius: 20.0,
                                          offset: Offset(0, 10))
                                    ]),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey[100]))),
                                        child: _username),
                                    Container(
                                        margin: EdgeInsets.only(top: 10.0),
                                        padding: EdgeInsets.all(8.0),
                                        child: _btnpassword),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          FadeAnimation(
                              3,
                              Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(143, 148, 251, .6)),
                                  child: _loginButton)),
                          SizedBox(
                            height: 15,
                          ),
                          FadeAnimation(
                            3.2,
                            Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.65,
                                margin: EdgeInsets.only(top: 0.0),
                                alignment: Alignment.topRight,
                                child: Center(child: _forgotLabel)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
