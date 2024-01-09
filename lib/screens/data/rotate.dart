import 'dart:math';
import 'package:flutter/material.dart';

class Myrot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rotation Circulaire'),
        ),
        body: CircularRotationWidget(),
      ),
    );
  }
}

class CircularRotationWidget extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: List.generate(items.length, (index) {
          final double angle = 2 * pi * index / items.length;
          return Positioned(
            left: 100 * cos(angle) + MediaQuery.of(context).size.width / 2,
            top: 100 * sin(angle) + MediaQuery.of(context).size.height / 2,
            child: Transform.rotate(
              angle: angle,
              child: Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.blue,
                child: Text(items[index]),
              ),
            ),
          );
        }),
      ),
    );
  }
}
