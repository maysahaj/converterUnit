
import 'package:convert_unit/myProvider.dart';
import 'package:provider/provider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CurrencyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Enter number',
        fillColor: Colors.white,
        filled: true,
        hintStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
          )
        ),
      ),
      onChanged: (value) {
       Provider.of<MyProvider>(context,listen: false).setTextField(value) ;
      },
    );
  }
}
