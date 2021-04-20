import 'package:flutter/material.dart';

class NavigationService {
  List<BottomNavigationBarItem> getNavigationItemList() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.notifications_active),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.calendar_today),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.account_circle),
      ),
    ];
  }
}
