import 'package:flutter/material.dart';

import '../../widget.dart/Input.dart';
import '../../widget.dart/button.dart';
import '../../widget.dart/navabar.dart';

class Chargement_Password extends StatelessWidget {
  const Chargement_Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        //     title: "Mon Titre",  Ici on peux ajouter un titre pour la navbar superieur
        leadingIconData: Icons.chevron_left,
        onLeadingPressed: () {
          print("Bouton de gauche cliqué !");
          Navigator.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
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
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
