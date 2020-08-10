import 'package:convert_unit/myProvider.dart';
import 'package:convert_unit/screen/firstHalf.dart';
import 'package:convert_unit/screen/secondHalf.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constant.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyProvider>(
      create: (BuildContext context) => MyProvider(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  int tabBottomController = 0;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(() {
      setState(() {
        tabBottomController = tabController.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 0.0,
        title: Text(
          'converter units'.toUpperCase(),
          style: textStyle ,
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 15.0),
          Expanded(flex: 2, child: FirstHalf()),
          Expanded(flex: 1, child: SecondHalf()),
        ],
      ),

      bottomNavigationBar: ConvexAppBar(
        elevation: 8,
        color: Colors.pink,
        backgroundColor: Colors.white,
        onTap: (value) {
          Provider.of<MyProvider>(context, listen: false).setTabBottomController(value);
          Provider.of<MyProvider>(context, listen: false).getInitial();
          Provider.of<MyProvider>(context, listen: false).getMap();
        },
        items: items,
        initialActiveIndex: 2,
      ),
    );
  }
}
