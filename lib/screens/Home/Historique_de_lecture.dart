import 'package:flutter/material.dart';

import '../../widget.dart/Input.dart';
import '../../widget.dart/button.dart';
import '../../widget.dart/list.dart';
import '../../widget.dart/navabar.dart';
import 'home.dart';

class HistoriqueLecture extends StatefulWidget {
  const HistoriqueLecture({super.key});

  @override
  State<HistoriqueLecture> createState() => _HistoriqueLectureState();
}

class _HistoriqueLectureState extends State<HistoriqueLecture> {
  bool showDrawer = false;

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
        onDrawerIconPressed: () {
          setState(() {
            showDrawer = !showDrawer;
          });
        },
      ),
      body: ListView(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                  child: Column(children: [
                    Text(
                      "Historique",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod"),
                    SizedBox(
                      height: 30,
                    ),
                    Row(children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF353434))),
                        onPressed: () => {},
                        child: Text(
                          'Toute les annonces',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(
                              color: Colors.black, // Couleur de la bordure
                              width: 1.0, // Largeur de la bordure
                            ),
                          ),
                        ),
                        onPressed: () => {},
                        child: Text(
                          'Objet récupéré',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ]),
                  ])),
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
              SizedBox(
                height: 20,
              )
            ],
          ),
        ],
      ),
      endDrawer: showDrawer ? MyDrawer() : null,
    );
  }
}
