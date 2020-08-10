import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Map currencyMap = {
  'USD': 3.5,
  'NIS': 1,
  'JD': 5,
  'EGP': 0.2,
};

Map lengthMap = {
  'Centimiter': 0.01,
  'meter': 1,
  'kilom': 1000,
  'mili': 1609.344,
};
Map weightMap = {
  'mili gram': 0.001,
  'gram': 1,
  'kilog': 1000,
  'Ton': 1000 * 1000,
};

Map timeMap = {
  'secound': 1,
  'minute': 60,
  'hour': 60 * 60,
  'day': 24 * 60 * 60,
  'week': 7 * 24 * 60 * 60,
};


Color mainColor =Colors.pink;

List<BottomNavigationBarItem> bottomNavigationBarItem = [
  BottomNavigationBarItem(
    icon: Icon(Icons.more_horiz
     
    ),
    title: Text(
      'Length',
      style: TextStyle(
        color:mainColor,
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.fitness_center,
      color: mainColor,
    ),
    title: Text(
      'weight',
      style: TextStyle(
        color: mainColor,
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.access_time,
      color: mainColor,
    ),
    title: Text(
      'time',
      style: TextStyle(
        color:mainColor,
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.account_balance,
      color: mainColor,
    ),
    title: Text(
      'currency',
      style: TextStyle(
        color: mainColor,
      ),
    ),
  ),
];

List<BottomNavyBarItem> itemsBottomNavyBar=[
  BottomNavyBarItem(

    icon: Icon(
      FontAwesomeIcons.rulerVertical,
      color: mainColor,
    ),
    title: Text(
      'Length',
      style: TextStyle(
        color:mainColor,
      ),
    ),
  ),
  BottomNavyBarItem(
    icon: Icon(
      Icons.fitness_center,
      color: mainColor,
    ),
    title: Text(
      'weight',
      style: TextStyle(
        color: mainColor,
      ),
    ),
  ),
  BottomNavyBarItem(
    icon: Icon(
      Icons.access_time,
      color: mainColor,
    ),
    title: Text(
      'time',
      style: TextStyle(
        color:mainColor,
      ),
    ),
  ),
 BottomNavyBarItem(
    icon: Icon(
      Icons.account_balance,
      color: mainColor,
    ),
    title: Text(
      'currency',
      style: TextStyle(
        color: mainColor,
      ),
    ),
  ),
];


List<TabItem> items = [
TabItem(
icon: Icon(
FontAwesomeIcons.rulerVertical,
color: mainColor,
),
title:
'Length',

),
TabItem(
icon: Icon(
Icons.fitness_center,
color: mainColor,
),
title:
'weight',

),
TabItem(
icon: Icon(
Icons.access_time,
color: mainColor,
),
title:
'time',

),
TabItem(
icon: Icon(
Icons.money_off,
color: Colors.pink,
),
title: 'currency',

),
] ;

BoxDecoration boxDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(
    color: mainColor,
    width: 1,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(30),
  ),
);

TextStyle textStyle =TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Colors.black
);

