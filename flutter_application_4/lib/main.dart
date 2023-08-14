import 'package:flutter/material.dart';

import 'home.dart';

void main(List<String> args) {
  runApp(counter());
}

class counter extends StatelessWidget {
  const counter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "counter",
      home: counterscreen(),
    );
  }
}
