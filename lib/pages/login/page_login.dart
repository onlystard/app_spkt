import 'package:app_spkt/pages/forgot_password/page_forgot_password.dart';
import 'package:app_spkt/shared/animation/FadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageLogin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PageLoginState();
  }
}
class PageLoginState extends State{
  TextEditingController _textControllerUserName = new TextEditingController();
  TextEditingController _textControllerPassword = new TextEditingController();
  bool _isObscure = true;
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit app ?'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No',),
          ),
          new FlatButton(
            onPressed: (){
              Future.delayed(const Duration(milliseconds: 1000), () {
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              });
            },
            child: new Text('Yes', style: TextStyle(color: Colors.grey), ),
          ),
        ],
      ),
    )) ?? false;
  }
  @override
  Widget build(BuildContext context) {
    final userName = TextField(
      onChanged: (value){
      },
      keyboardType: TextInputType.text,
      controller: _textControllerUserName,
      autofocus: false,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_box),
          hintText: 'Enter your userName...',
          hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
    // ignore: non_constant_identifier_names
    final Password = TextField(
      onChanged: (value){
      },
      autofocus: false,
      obscureText: _isObscure,
      controller: _textControllerPassword,
      decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              }),
          prefixIcon: Icon(Icons.vpn_key),
          hintText: 'Enter your Password...',
          hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
    final loginButton = new FlatButton(
      child: Text("Login"),
      textColor: Colors.white,
      color: Theme.of(context).primaryColor,
      splashColor: Colors.white,
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      onPressed: () async{
      },
    );
    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password',
        style: TextStyle(color: Colors.black54, fontSize: 15.0),
      ),
      onPressed: () {
        Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => PageFogotPassword()
          ),
        );
      },
    );
    // TODO: implement build
    return new WillPopScope(
        onWillPop: _onWillPop,
        child: new Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height:50.0,),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ute.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:30.0, right:30.0,bottom: 15.0, top:15.0 ),
                      child: Column(
                        children: <Widget>[
                          FadeAnimation(1.8, Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10)
                                  )
                                ]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                    ),
                                    child: userName
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    padding: EdgeInsets.all(8.0),
                                    child: Password
                                ),
                              ],
                            ),
                          )),
                          SizedBox(height: 30,),
                          FadeAnimation(3, Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:  Color.fromRGBO(143, 148, 251, .6)
                              ),
                              child: loginButton
                          )),
                          SizedBox(height: 15,),
                          FadeAnimation(3.2,  Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.65,
                              margin: EdgeInsets.only(top: 0.0),
                              alignment: Alignment.topRight,
                              child: Center(child: forgotLabel
                              )
                          ),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
        )
    );
  }
}