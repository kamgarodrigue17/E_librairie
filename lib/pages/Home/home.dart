import 'package:flutter/material.dart';
import 'package:flutter_application_1/Composant/bouton.dart';
import 'package:flutter_application_1/Composant/navabar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: MyAppBar(
            //     title: "Mon Titre",
            leadingIconData: Icons.menu,
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
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 31), // Ajustez la taille ici

                            //floatingLabelBehavior: FloatingLabelBehavior.always, // Texte au-dessus de la bordure
                          ),
                        ),
                        SizedBox(
                          height: 39,
                        ),
                        ImageGallery(),
                        SizedBox(
                          height: 43,
                        ),
                        Row(
                          children: [
                            Text(
                              'Plus récent',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                //  color: Color(0x3D3D3D),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: 18,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ImageRecent(
                              description: 'Les amoureux de la cusine sd',
                              titre: 'Melen',
                              imagePath: 'assets/images/recent1.png',
                            ),
                            ImageRecent(
                              description: 'Les amoureux de la cusine sd',
                              titre: 'Melen',
                              imagePath: 'assets/images/recent2.png',
                            ),
                            ImageRecent(
                              description: 'Les amoureux de la cusine sd',
                              titre: 'Melen',
                              imagePath: 'assets/images/recent3.png',
                            ),
                            ImageRecent(
                              description: 'Les amoureux de la cusine sd',
                              titre: 'Melen',
                              imagePath: 'assets/images/recent4.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Spacer(), // Ajout d'un espaceur à gauche pour pousser le bouton à droite
                        Padding(
                          padding: EdgeInsets.only(right: 28),
                          child: Bouton_Outlined_plus_icone(
                            texte: 'Voir Plus',
                            onPressed: () {
                              print('Juste test');
                            },
                            Icone_du_bouton: Icons.add,
                            isFilled: false,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text(
                        'Il  a  7 Jours',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
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
          ])),
    );
  }
}

class ImageGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 329,
            height: 140,
            color: Colors.white,
          ),
          Positioned(
            left: 0,
            child: ImageWidget(
              width: 71,
              height: 98,
              imagePath: 'assets/images/livre5.png',
            ),
          ),
          Positioned(
            left: 44,
            child: ImageWidget(
              width: 89,
              height: 122,
              imagePath: 'assets/images/livre4.png',
            ),
          ),
          Positioned(
            left: 259,
            child: ImageWidget(
              width: 71,
              height: 98,
              imagePath: 'assets/images/livre3.png',
            ),
          ),
          Positioned(
            left: 204,
            child: ImageWidget(
              width: 89,
              height: 122,
              imagePath: 'assets/images/livre2.png',
            ),
          ),
          Positioned(
            left: 108,
            child: ImageWidget(
              width: 113,
              height: 155,
              imagePath: 'assets/images/livre1.png',
            ),
          ),
        ],
      ),
    ]);
  }
}

class ImageWidget extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;

  ImageWidget({
    required this.width,
    required this.height,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ImageRecent extends StatelessWidget {
  final String description;
  final String titre;
  final String imagePath;

  ImageRecent({
    // required this.width,
    // required this.height,
    required this.description,
    required this.titre,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 92,
          height: 127,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              // BoxShadow(
              //   color: Colors.black.withOpacity(0.3),
              //   blurRadius: 5.0,
              //   offset: Offset(0, 2),
              // ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // SizedBox(
        //   height: 9,
        // ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Container(
            width: 92,
            child: Column(
              children: [
                Text(
                  description,
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  titre,
                  style: TextStyle(
                      fontSize: 6,
                      fontWeight: FontWeight.w400,
                      color: Color(0x666666)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ListeRecent extends StatelessWidget {
  final String description;
  final String date;
  final String lieu;
  final String heure;
  final String imagePath;

  ListeRecent(
      {
      // required this.width,
      // required this.height,
      required this.description,
      required this.date,
      required this.lieu,
      required this.imagePath,
      required this.heure});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //  width: 92,
          height: 109,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              // BoxShadow(
              //   color: Colors.black.withOpacity(0.3),
              //   blurRadius: 5.0,
              //   offset: Offset(0, 2),
              // ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 53,
                  right: 23,
                ),
                child: Container(
                  width: 67,
                  height: 85,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        description,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                      Text(
                        lieu,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Color.fromRGBO(0, 0, 0, 0.8), // Opacité de 0.7
                        ),
                      ),
                      Text(
                        date,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color.fromRGBO(0, 0, 0, 0.4),
                        ),
                      ),
                      Text(heure,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                          )),
                    ],
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
