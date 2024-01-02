import 'package:flutter/material.dart';

import '../../widget.dart/Input.dart';
import '../../widget.dart/button.dart';
import '../../widget.dart/navabar.dart';
import 'home.dart';

class confirmation extends StatefulWidget {
  const confirmation({super.key});

  @override
  State<confirmation> createState() => _confirmationState();
}

class _confirmationState extends State<confirmation> {
  bool showDrawer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        //     title: "Mon Titre",
        // leadingIconData: Icons.chevron_left,
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
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Article potentiellement trouvé ",
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod "),
                buildCustomTextField(
                  labelText: 'Ou avez-vous perdu l’objet',
                ),
                buildCustomTextField(
                  labelText: "Donnez la date",
                  iconData: Icons.calendar_today_outlined,
                ),
                buildCustomTextField(
                  labelText: 'Heure',
                ),
                buildCustomTextField_Description(
                  labelText: "Donnez nous une description claire",
                ),
                SizedBox(
                  height: 157,
                ),
                Row(
                  children: [
                    Spacer(), // Ajout d'un espaceur à gauche pour pousser le bouton à droite

                    Bouton_Outlined_plus_icone(
                      texte: "Send",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      Icone_du_bouton: Icons.send,
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
