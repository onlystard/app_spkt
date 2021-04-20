import 'package:app_spkt/shared/widgets/show_toast_noti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core.dart';

class NoticationView extends GetView<NoticationViewController> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.notifications_active_outlined, size: 35.0, color: Colors.lightBlue,),
          tileColor: Colors.lightBlueAccent[50],
          title: Text("Thông báo hoạt động đoàn khoa công nghệ vào ngày 30/04/2021"),
          subtitle:  Text("Là hoạt động thường niên của đoàn trường, đề nghị các sinh viên thực hiện nghiêm túc"),
          onTap: ()=>showToastNoti("hello")
        ),
        Container(padding:EdgeInsets
          .only(top:7.0, bottom: 7.0),height: 1.0,color: Colors.grey,),
        ListTile(
          leading: Icon(Icons.notifications_active_outlined, size: 35.0, color: Colors.lightBlue,),
          tileColor: Colors.lightBlueAccent[50],
          title: Text("Thông báo hoạt động đoàn khoa công nghệ vào ngày 30/04/2021"),
          subtitle:  Text("Là hoạt động thường niên của đoàn trường, đề nghị các sinh viên thực hiện nghiêm túc"),
            onTap: ()=>showToastNoti("hello")
        ),
        Container(padding:EdgeInsets
            .only(top:7.0, bottom: 7.0),height: 1.0,color: Colors.grey,),
        ListTile(
            leading: Icon(Icons.notifications_active_outlined, size: 35.0, color: Colors.lightBlue,),
            tileColor: Colors.lightBlueAccent[50],
            title: Text("Thông báo hoạt động đoàn khoa công nghệ vào ngày 30/04/2021"),
            subtitle:  Text("Là hoạt động thường niên của đoàn trường, đề nghị các sinh viên thực hiện nghiêm túc"),
            onTap: ()=>showToastNoti("hello")
        ),
        Container(padding:EdgeInsets
            .only(top:7.0, bottom: 7.0),height: 1.0,color: Colors.grey,),
        ListTile(
            leading: Icon(Icons.notifications_active_outlined, size: 35.0, color: Colors.lightBlue,),
            tileColor: Colors.lightBlueAccent[50],
            title: Text("Thông báo hoạt động đoàn khoa công nghệ vào ngày 30/04/2021"),
            subtitle:  Text("Là hoạt động thường niên của đoàn trường, đề nghị các sinh viên thực hiện nghiêm túc"),
            onTap: ()=>showToastNoti("hello")
        ),
        Container(padding:EdgeInsets
            .only(top:7.0, bottom: 7.0),height: 1.0,color: Colors.grey,),
        ListTile(
            leading: Icon(Icons.notifications_active_outlined, size: 35.0, color: Colors.lightBlue,),
            tileColor: Colors.lightBlueAccent[50],
            title: Text("Thông báo hoạt động đoàn khoa công nghệ vào ngày 30/04/2021"),
            subtitle:  Text("Là hoạt động thường niên của đoàn trường, đề nghị các sinh viên thực hiện nghiêm túc"),
            onTap: ()=>showToastNoti("hello")
        ),
        Container(padding:EdgeInsets
            .only(top:7.0, bottom: 7.0),height: 1.0,color: Colors.grey,),
        ListTile(
            leading: Icon(Icons.notifications_active_outlined, size: 35.0, color: Colors.lightBlue,),
            tileColor: Colors.lightBlueAccent[50],
            title: Text("Thông báo hoạt động đoàn khoa công nghệ vào ngày 30/04/2021"),
            subtitle:  Text("Là hoạt động thường niên của đoàn trường, đề nghị các sinh viên thực hiện nghiêm túc"),
            onTap: ()=>showToastNoti("hello")
        ),
        Container(padding:EdgeInsets
            .only(top:7.0, bottom: 7.0),height: 1.0,color: Colors.grey,),
        ListTile(
            leading: Icon(Icons.notifications_active_outlined, size: 35.0, color: Colors.lightBlue,),
            tileColor: Colors.lightBlueAccent[50],
            title: Text("Thông báo hoạt động đoàn khoa công nghệ vào ngày 30/04/2021"),
            subtitle:  Text("Là hoạt động thường niên của đoàn trường, đề nghị các sinh viên thực hiện nghiêm túc"),
            onTap: ()=>showToastNoti("hello")
        ),
        Container(padding:EdgeInsets
            .only(top:7.0, bottom: 7.0),height: 1.0,color: Colors.grey,),
        ListTile(
            leading: Icon(Icons.notifications_active_outlined, size: 35.0, color: Colors.lightBlue,),
            tileColor: Colors.lightBlueAccent[50],
            title: Text("Thông báo hoạt động đoàn khoa công nghệ vào ngày 30/04/2021"),
            subtitle:  Text("Là hoạt động thường niên của đoàn trường, đề nghị các sinh viên thực hiện nghiêm túc"),
            onTap: ()=>showToastNoti("hello")
        ),
        Container(padding:EdgeInsets
            .only(top:7.0, bottom: 7.0),height: 1.0,color: Colors.grey,),
        ListTile(
            leading: Icon(Icons.notifications_active_outlined, size: 35.0, color: Colors.lightBlue,),
            tileColor: Colors.lightBlueAccent[50],
            title: Text("Thông báo hoạt động đoàn khoa công nghệ vào ngày 30/04/2021"),
            subtitle:  Text("Là hoạt động thường niên của đoàn trường, đề nghị các sinh viên thực hiện nghiêm túc"),
            onTap: ()=>showToastNoti("hello")
        ),
        Container(padding:EdgeInsets
            .only(top:7.0, bottom: 7.0),height: 1.0,color: Colors.grey,),
        ListTile(
            leading: Icon(Icons.notifications_active_outlined, size: 35.0, color: Colors.lightBlue,),
            tileColor: Colors.lightBlueAccent[50],
            title: Text("Thông báo hoạt động đoàn khoa công nghệ vào ngày 30/04/2021"),
            subtitle:  Text("Là hoạt động thường niên của đoàn trường, đề nghị các sinh viên thực hiện nghiêm túc"),
            onTap: ()=>showToastNoti("hello")
        ),
      ],
    );
  }
}

