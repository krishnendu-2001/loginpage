


import 'package:flutter/material.dart';

import 'package:flutter_application_1/screen/splash.dart';



void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(title:"Login Sample",
    theme:ThemeData(primarySwatch:Colors.blue ),
    home: SplashScreen(),
    );

  }
}