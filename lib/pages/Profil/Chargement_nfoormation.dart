import 'package:flutter/material.dart';
import 'package:flutter_application_1/Composant/bouton.dart';
import 'package:flutter_application_1/Composant/navabar.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/Home/Annonce.dart';

class Chargement_Information extends StatelessWidget {
  const Chargement_Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        //     title: "Mon Titre",
        leadingIconData: Icons.chevron_left,
        onLeadingPressed: () {
          Navigator.of(context).pop();
          // Action à effectuer lorsque l'utilisateur clique sur le bouton de gauche
          print("Bouton de gauche cliqué !");
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
                      width: 290,
                      height: 83,
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Modifications de vos informations",
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
                  labelText: 'Prénom', hintText: 'Koffi Gérard'),
              buildCustomTextField(
                  labelText: 'Adresse mail', hintText: 'test@gmail.com'),
              buildCustomTextField(
                  labelText: 'Date de naissance', hintText: '12/12/2000'),
              SizedBox(
                height: 30,
              ),
              Bouton(
                texte: 'Enregistrer',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Annonce()),
                  );
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget buildCustomTextField(
      {String labelText = 'Nom', String hintText = 'Koffi Gérard'}) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
              child: Text(labelText),
            ),
            Text(
              " *",
              style: TextStyle(color: Color(0xFFFD6847)),
            ),
          ],
        ),
        TextField(
          style: TextStyle(), // Couleur du texte
          decoration: InputDecoration(
            labelText: hintText,
            labelStyle: TextStyle(
              color: Color(0xFF6C6C6C),
              fontSize: 12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 31),
          ),
        ),
      ],
    );
  }
}
