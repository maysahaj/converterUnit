import 'package:convert_unit/myProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Picker extends StatelessWidget {
  Picker(this.setCurrency,) ;
  Function setCurrency ;
//  Picker(this.currencyPicker);
  @override
  Widget build(BuildContext context) {
    MyProvider myProvider =  Provider.of<MyProvider>(context);
    return CupertinoPicker(
        itemExtent: 32,
        onSelectedItemChanged: (value) {
          setCurrency(myProvider.myMap.keys.toList()[value])  ;
        },
        children: myProvider.myMap.keys.toList().map((e) => Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            e,
            style: TextStyle(color:Colors.pink,fontWeight:FontWeight.bold ,fontSize: 15)
            ,),
        ),).toList()
    );
  }
}