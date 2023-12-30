import 'package:flutter/material.dart';
import 'package:flutter_application_1/Composant/Input.dart';
import 'package:flutter_application_1/Composant/bouton.dart';
import 'package:flutter_application_1/Composant/navabar.dart';
import 'package:flutter_application_1/main.dart';

class Chargement_Password extends StatelessWidget {
  const Chargement_Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        //     title: "Mon Titre",
        leadingIconData: Icons.chevron_left,
        onLeadingPressed: () {
          print("Bouton de gauche cliqué !");
          Navigator.of(context).pop(); // Cela va revenir en arrière
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 30, right: 30), // Ajustez le padding comme nécessaire
        child: ListView(
          children: [
            Column(children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                      width: 200,
                      height: 83,
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Changement de mot de passe",
                        style: TextStyle(fontSize: 24),
                      )),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod "),
              buildCustomTextField(
                  labelText: 'Mot de passe',
                  hintText: 'Saisissez le mot de passe actuel'),
              buildCustomTextField(
                  labelText: 'Nouveau mot de passe',
                  hintText: 'Saisissez le nouveau mot de passe'),
              buildCustomTextField(
                  labelText: 'Confirmation du mot de passe',
                  hintText: 'Saisissez le nouveau mot de passe'),
              SizedBox(
                height: 30,
              ),
              Bouton(
                texte: 'Enregistrer',
                onPressed: () {
                  print("Enregistre");
                  // Logique à exécuter lorsqu'on appuie sur le bouton
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }

  // Widget buildCustomTextField(
  //     {String labelText = 'Nom', String hintText = 'Koffi Gérard'}) {
  //   return Column(
  //     children: [
  //       Row(
  //         children: [
  //           Padding(
  //             padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
  //             child: Text(labelText),
  //           ),
  //           Text(
  //             " *",
  //             style: TextStyle(color: Color(0xFFFD6847)),
  //           ),
  //         ],
  //       ),
  //       TextField(
  //         style: TextStyle(), // Couleur du texte
  //         decoration: InputDecoration(
  //           labelText: hintText,
  //           labelStyle: TextStyle(
  //             color: Color(0xFF6C6C6C),
  //             fontSize: 12,
  //           ),
  //           border: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(50),
  //           ),
  //           contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 31),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
