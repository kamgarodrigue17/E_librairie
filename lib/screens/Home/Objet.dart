import 'package:elibrairy/screens/Authentification/connexion.dart';
import 'package:elibrairy/screens/Home/home.dart';
import 'package:flutter/material.dart';

import '../../widget.dart/Input.dart';
import '../../widget.dart/button.dart';
import '../../widget.dart/navabar.dart';

class Objet_Creation extends StatefulWidget {
  const Objet_Creation({super.key});

  @override
  State<Objet_Creation> createState() => _Objet_CreationState();
}

class _Objet_CreationState extends State<Objet_Creation> {
  bool showDrawer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        //     title: "Mon Titre",
        leadingIconData: Icons.chevron_left,
        onDrawerIconPressed: () {
          setState(() {
            showDrawer = !showDrawer;
          });
        },
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
              //  mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: Text(
                    'Ajoutez un objet',
                    style: TextStyle(fontSize: 24),
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
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
                      child: Text('Photo'),
                    ),
                    Text(
                      " *",
                      style: TextStyle(color: Color(0xFFFD6847)),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(330,
                            44), // Définissez la largeur et la hauteur du bouton
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF2982C4))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Importer',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(), // Ajoutez cet espaceur pour pousser l'icône à droite
                      Icon(Icons.file_upload_outlined,
                          size: 20, color: Colors.white
                          // Couleur blanche si isFilled est true, sinon couleur orange
                          ),
                    ],
                  ),
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
      ),
      endDrawer: showDrawer ? MyDrawer() : null,
    );
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
            5, // Définit le nombre de lignes que le TextField doit afficher.
        decoration: InputDecoration(
          labelText: 'Description',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
