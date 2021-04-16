import 'package:flutter/material.dart';

class TabBarList {
  List<Tab> getNavigationItemList() {
    return <Tab>[
      Tab(
        child: Text('Thông báo chung'),
      ),
      Tab(
        child: Text('TB đến lớp học phần'),
      ),
      Tab(
        child: Text('TB về nhận Đồ án tốt nghiệp & công nhận tốt nghiệp'),
      ),
    ];
  }
}
