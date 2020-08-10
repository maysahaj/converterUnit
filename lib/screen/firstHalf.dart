
import 'package:convert_unit/myProvider.dart';
import 'package:convert_unit/widget/picker.dart';
import 'package:convert_unit/widget/textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant.dart';

class FirstHalf extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Text('From',
                  style: textStyle ,textAlign: TextAlign.center,
                )
              ),
              Expanded(
                flex: 10,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
                  child: Picker(Provider.of<MyProvider>(context).setFromCurrency),
                  decoration:boxDecoration,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: CurrencyTextField(),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Text('To',
                  style: textStyle ,textAlign: TextAlign.center,
                )
              ),
              Expanded(
                flex: 10,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                  child: Picker(Provider.of<MyProvider>(context).setToCurrency),
                  decoration:  boxDecoration,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
