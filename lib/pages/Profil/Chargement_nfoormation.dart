import 'package:flutter/material.dart';

class Chargement_Information extends StatelessWidget {
  const Chargement_Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.chevron_left, color: Colors.black),
              onPressed: () {
                // Navigator.pop(context);
              },
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF27A9E1), Color(0xFF2F358A)],
                  stops: [0.0, 1.0],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/bienvenu.png', // Remplacez par le chemin de votre image
                  width: 100, // Ajustez la largeur de l'image selon vos besoins
                  height:
                      100, // Ajustez la hauteur de l'image selon vos besoins
                ),
              ),
            ),
          ),
          body: ListView(
            children: [
              Column(
                children: [],
              ),
            ],
          )),
    );
  }
}
