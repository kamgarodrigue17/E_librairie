import 'package:flutter/material.dart';

import '../../widget.dart/Input.dart';
import '../../widget.dart/button.dart';
import '../../widget.dart/navabar.dart';
import 'home.dart';

class Annonce extends StatelessWidget {
  const Annonce({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          //     title: "Mon Titre",
          leadingIconData: Icons.chevron_left,
          onLeadingPressed: () {
            // Action à effectuer lorsque l'utilisateur clique sur le bouton de gauche
            print("Bouton de gauche cliqué !");
          },
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 10),
                    child: Container(
                      width: 150,
                      child: Text(
                        'Ajoutez une annonce',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod "),
                  buildCustomTextField(
                    labelText: 'Nom',
                  ),
                  buildCustomTextField(
                    labelText: 'Localisation',
                  ),
                  buildCustomTextField(
                    labelText: 'Date',
                  ),
                  buildCustomTextField(
                    labelText: 'Heure',
                  ),
                  buildCustomTextField_Description(
                    labelText: 'Description',
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Bouton_Outlined_plus_icone(
                        texte: 'Annuler',
                        onPressed: () {
                          print('Juste test');
                        },
                        Icone_du_bouton: Icons.close,
                        isFilled: false,
                      ),
                      Spacer(), // Ajout d'un espaceur à gauche pour pousser le bouton à droite

                      Bouton_Outlined_plus_icone(
                        texte: 'Ajouter',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        Icone_du_bouton: Icons.add,
                        isFilled: true,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class DescriptionTextField extends StatefulWidget {
  @override
  _DescriptionTextFieldState createState() => _DescriptionTextFieldState();
}

class _DescriptionTextFieldState extends State<DescriptionTextField> {
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _descriptionController,
        maxLines:
            5, // Définir le nombre de lignes que le TextField doit afficher.
        decoration: InputDecoration(
          labelText: 'Description',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
