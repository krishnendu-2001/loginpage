
import 'package:flutter/cupertino.dart' show BuildContext, Center, Column, Icon, MainAxisAlignment, StatelessWidget, Text, Widget;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: camel_case_types
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text("Flutter Container Example"),  
        ),  
        body: Center(  
          child:Container(
            child:Text("hello world",style:Text)
          padding: EdgeInsets.all(35),  
          margin: EdgeInsets.all(20),  
          decoration: BoxDecoration(  
            border: Border.all(color: Colors.black, width: 4),  
            borderRadius: BorderRadius.circular(8),  
            boxShadow: [  
              new BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),  
            ],  
          ),  
          child: Text("Hello! World",  
              style: TextStyle(
                fontSize: 30)),  
        ),  
      ),
      )  
    );  
  }  
}  
