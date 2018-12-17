import 'package:flutter/material.dart';


class NavigationIconView{
  BottomNavigationBarItem item;

  NavigationIconView({Widget icon, Widget title}){
    item = new BottomNavigationBarItem(icon: icon, title: title);
  }

}