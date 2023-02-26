import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPage();
}

class _TestPage extends State<TestPage> {
  int _pageIndex = 0;
  List<bool> _selections = [];

  String getPersonalityColor() {
    var color = "";

    if (_selections[0]) {
      if (_selections[1]) {
        color = "yellow";
      } else {
        color = "green";
      }
    } else {
      if (_selections[1]) {
        color = "red";
      } else {
        color = "blue";
      }
    }

    return color;
  }

  String getQuestionString() {
    switch (_pageIndex) {
      case 0:
        return "Connections with people are more important than getting things done";
      case 1:
        return "I am usually more outgoing than reserved";
      case 2:
        return "Sushi over ramen";
      case 3:
        var color = getPersonalityColor();
        return "You are a $color";
      default:
        return "";
    }
  }

  void _yesPressed() {
    setState(() {
      if (_pageIndex == 3) {
        Navigator.pop(context);
      }
      _pageIndex++;
      _selections.add(true);
    });
  }

  void _noPressed() {
    setState(() {
      if (_pageIndex == 3) {
        _pageIndex = 0;
        _selections = [];
        return;
      }
      _pageIndex++;
      _selections.add(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personality Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(getQuestionString()),
            ElevatedButton(
                child: const Text('Yes'),
                onPressed: () {
                  _yesPressed();
                }),
            ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: () {
                  _noPressed();
                },
                child: const Text('No'))
          ],
        ),
      ),
    );
  }
}
