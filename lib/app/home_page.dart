import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_application/resources/app_strings.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Random _random = Random();
  Color _color = Color.fromARGB(255, 255, 255, 255);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColor,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.appTitle),
        ),
        body: Container(
          color: _color,
          child: Center(
            child: Text(
              AppStrings.heyThere,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
