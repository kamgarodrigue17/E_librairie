import 'dart:math';
import 'package:flutter/material.dart';

class MyAppo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Défilement Circulaire'),
        ),
        body: CircularScrollWidget(),
      ),
    );
  }
}

class CircularScrollWidget extends StatefulWidget {
  @override
  _CircularScrollWidgetState createState() => _CircularScrollWidgetState();
}

class _CircularScrollWidgetState extends State<CircularScrollWidget> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PageView.builder(
        itemCount: items.length * 3, // Pour simuler le défilement circulaire
        controller: PageController(initialPage: items.length),
        itemBuilder: (context, index) {
          final itemIndex = index % items.length;
          final double angle = 2 * pi * itemIndex / items.length;
          return Transform.rotate(
            angle: angle,
            child: Center(
              child: Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.blue,
                child: Text(items[itemIndex]),
              ),
            ),
          );
        },
      ),
    );
  }
}
