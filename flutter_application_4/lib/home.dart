import 'package:flutter/material.dart';

class counterscreen extends StatefulWidget {
  const counterscreen({super.key});

  @override
  State<counterscreen> createState() => _counterscreenState();
}

class _counterscreenState extends State<counterscreen> {
  var _counter = 0;

  void _counteradd() {
    setState(() {
      _counter++;
    });
  }

  // void _counterdecrease() {
  //   setState(() {
  //     _counter--;
  //   });
  // }

  // void _counterdzero() {
  //   _counter = 0;
  //   print('$_counter');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterApp'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          ElevatedButton(onPressed: _counteradd, child: Text("cl")),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter--;
                });
              },
              child: Text("cl")),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter = 0;
                });
              },
              child: const Text("cl")),
          Text("counter is $_counter")
        ],
      ),
    );
  }
}
