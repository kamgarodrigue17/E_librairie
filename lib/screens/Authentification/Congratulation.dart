import 'package:flutter/material.dart';

import '../../widget.dart/button.dart';
import '../Home/Annonce.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Image.asset(
                'assets/images/congratulation.png',
                width: 400.425,
                height: 214.874,
                alignment: Alignment.topCenter,
              ),
              Image.asset(
                'assets/images/calque2.png',
                // width: 100,
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: 54,
              ),
              const Text(
                'Félicitations',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 36, right: 36, bottom: 34, top: 24),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt',
                  style: TextStyle(
                    color: Color(0xFF6C6C6C),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Bouton(
                texte: 'Ajouter une Annonce',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Annonce()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
