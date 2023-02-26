import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personality Test'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          const Text("item1"),
          const Text("item2"),
          const Text("item3"),
          const Text("item4"),
        ],
      )),
    );
  }
}
