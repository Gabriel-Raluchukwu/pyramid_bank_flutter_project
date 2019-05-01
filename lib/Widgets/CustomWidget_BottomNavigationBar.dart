import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomNavBarItems() {
  return [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.payment,
        color: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[400],
      title: Text(
        'Transfer',
        style: TextStyle(
          color: Colors.grey[900],
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.account_balance,
        color: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[400],
      title: Text(
        'Transfer',
        style: TextStyle(
          color: Colors.grey[900],
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.group_add,
        color: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[400],
      title: Text(
        '+Beneficiary',
        style: TextStyle(
          color: Colors.grey[900],
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.phone_iphone,
        color: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[400],
      title: Text(
        'Mobile Top-Up',
        style: TextStyle(
          color: Colors.grey[900],
        ),
      ),
    ),
  ];
}
