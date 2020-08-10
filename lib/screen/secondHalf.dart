

import 'package:convert_unit/myProvider.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

import 'package:provider/provider.dart';

class SecondHalf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyProvider myProvider =  Provider.of<MyProvider>(context);
    return Container(

      padding: EdgeInsets.only(top: 20),
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
        Text('Result',style: textStyle ,
        textAlign: TextAlign.center,
      ),
          Container(
            constraints: BoxConstraints(
              minWidth: 100 ,
            ),
            decoration: boxDecoration,
            padding: EdgeInsets.all(10),
            height: 50,
            child: Text(myProvider.result,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30,),
            )
          ), 
    ],
      ),
    );
  }
}
