import 'package:flutter/material.dart';
import 'package:flutter_application_1/Composant/bouton.dart';
import 'package:flutter_application_1/pages/Home/Annonce.dart';

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
                alignment: Alignment.topCenter, // Align image to the top
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
                  color: Colors.black, // Set text color to black
                  fontSize: 32.0, // Set font size as needed
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 36, right: 36, bottom: 34, top: 24),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt',
                  style: TextStyle(
                    color: Color(0xFF6C6C6C), // Set text color to black
                  ),
                  textAlign: TextAlign.center, // Center-align the text
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
