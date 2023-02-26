import 'package:flutter/material.dart';
import 'test.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Personality tester',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Start the test'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Test()),
            );
          },
        ),
      ),
    );
  }
}
