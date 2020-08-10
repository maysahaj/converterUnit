
import 'package:flutter/material.dart';

import 'constant.dart';

class MyProvider extends ChangeNotifier {
  int value = 1;
  String fromUnit = 'Centimiter';
  String toUnit = 'Centimiter';
  String result = '1';
  Map myMap = lengthMap;
  int tabBottomController = 0;
  setTabBottomController(int value){
    this.tabBottomController = value;
    notifyListeners();
  }

  setTextField(String value1) {
    this.value = int.parse(value1);
    calculate();
  }

  setFromCurrency(String fromUnit1) {
    getInitial() ;
    this.fromUnit = fromUnit1;
    calculate();
  }

  setToCurrency(String toUnit1) {
    getInitial() ;
    this.toUnit = toUnit1;
    calculate();
  }

  calculate() {
     getMap();
    print('$value bbb' );

    double res = (myMap[fromUnit] / myMap[toUnit]) * value;
    this.result =
    res < 1 && res > 0 ? res.toStringAsFixed(6) : res.toStringAsFixed(2);
    print('$result this res');
    notifyListeners();
  }

  getInitial() {
    if (tabBottomController == 0) {
      fromUnit = 'Centimiter';
      toUnit = 'Centimiter';
    } else if (tabBottomController == 1) {
      fromUnit = 'gram';
      toUnit = 'gram';
    } else if (tabBottomController == 2) {
      fromUnit = 'secound';
      toUnit = 'secound';
    } else if (tabBottomController == 3) {
      fromUnit = 'USD';
      toUnit = 'USD';
    }
    notifyListeners();
  }

  getMap() {
    if (tabBottomController == 0) {
      myMap = lengthMap;
    } else if (tabBottomController == 1) {
      myMap = weightMap;
    } else if (tabBottomController == 2) {
      myMap = timeMap;
    } else if (tabBottomController == 3) {
      myMap = currencyMap;
    }
    notifyListeners();
  }



}