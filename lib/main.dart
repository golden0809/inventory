import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inventory/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      title: 'Inventory App',  
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: Login(),
    );
  }
}


