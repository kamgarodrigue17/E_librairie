import 'package:flutter/material.dart';

import '../../widget.dart/button.dart';
import '../../widget.dart/list.dart';
import '../../widget.dart/navabar.dart';

class VoirPlus extends StatefulWidget {
  @override
  State<VoirPlus> createState() => _VoirPlusState();
}

class _VoirPlusState extends State<VoirPlus> {
  bool showDrawer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        //     title: "Mon Titre",
        leadingIconData: Icons.menu,
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
      body: ListView(children: [
        Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 23),
                child: Column(
                  children: [
                    TextField(
                      // obscureText: true, // Pour les mots de passe
                      style: TextStyle(
                          //  color: Color.fromARGB(0, 0, 0, 30)
                          ), // Couleur du texte
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 20,
                        ),

                        labelText: 'Recherche',
                        labelStyle: TextStyle(
                            color: Color(0xFF6C6C6C),
                            fontSize: 12), // Couleur du texte du label
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 31),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 18,
            ),
            Column(
              children: [
                ListeRecent(
                    description: 'La vie est un roman',
                    lieu: 'Nouvelle Route Nsimeyong',
                    date: "04/08/2023",
                    imagePath: 'assets/images/livre2.png',
                    heure: '14h'),
                ListeRecent(
                    description: 'La vie est un roman',
                    lieu: 'Nouvelle Route Nsimeyong',
                    date: "04/08/2023",
                    imagePath: 'assets/images/livre2.png',
                    heure: '14h'),
                ListeRecent(
                    description: 'La vie est un roman',
                    lieu: 'Nouvelle Route Nsimeyong',
                    date: "04/08/2023",
                    imagePath: 'assets/images/livre2.png',
                    heure: '14h'),
                ListeRecent(
                    description: 'La vie est un roman',
                    lieu: 'Nouvelle Route Nsimeyong',
                    date: "04/08/2023",
                    imagePath: 'assets/images/livre2.png',
                    heure: '14h'),
                ListeRecent(
                    description: 'La vie est un roman',
                    lieu: 'Nouvelle Route Nsimeyong',
                    date: "04/08/2023",
                    imagePath: 'assets/images/livre2.png',
                    heure: '14h'),
                ListeRecent(
                    description: 'La vie est un roman',
                    lieu: 'Nouvelle Route Nsimeyong',
                    date: "04/08/2023",
                    imagePath: 'assets/images/livre2.png',
                    heure: '14h')
              ],
            ),
          ],
        )
      ]),
      endDrawer: showDrawer ? MyDrawer() : null,
    );
  }
}
