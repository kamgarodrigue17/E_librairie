import 'package:flutter/material.dart';
import 'package:flutter_application_1/Composant/bouton.dart';
import 'package:flutter_application_1/pages/Profil/Chargement_nfoormation.dart';
import 'package:flutter_application_1/pages/Profil/changementPassword.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 296,
            color: Colors.white,
            child: Stack(children: [
              Container(
                height: 221,
                color: Colors.blue,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: ClipOval(
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors
                          .blue, // Vous pouvez ajouter la couleur ici si nécessaire
                      child: Image.asset(
                        'assets/images/profile.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 75,
                right: 0,
                child: Center(
                  child: ClipOval(
                    child: Container(
                        width: 51,
                        height: 51,
                        color: Color(
                            0xFF555555), // Vous pouvez ajouter la couleur ici si nécessaire
                        child: IconButton(
                            icon: Icon(
                              Icons.photo_camera_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              print("Chargement");
                            })),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 36, right: 35, top: 23),
            child: Column(
              children: [
                Text(
                  "Koffi Georges",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'koffi@gmail.com',
                  style: TextStyle(color: Color(0xFF888888)),
                ),
                SizedBox(
                  height: 23,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 58,
                ),
                Divider(
                  // Ajout d'une ligne entre les boutons
                  color: Colors.black,
                  height: 1.0,
                ),
                Center(
                  child: buildIconRow(
                    firstIcon: Icons.lock,
                    text: 'Changement de mot de passe',
                    secondIcon: Icons.chevron_right,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Chargement_Password()),
                      );
                    },
                  ),
                ),
                Divider(
                  // Ajout d'une ligne entre les boutons
                  color: Colors.black,
                  height: 0.1,
                ),
                Center(
                  child: buildIconRow(
                    firstIcon: Icons.edit_note_outlined,
                    text: 'Modifier mes informations',
                    secondIcon: Icons.chevron_right,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Chargement_Information()),
                      );
                    },
                  ),
                ),
                Divider(
                  // Ajout d'une ligne entre les boutons
                  color: Colors.black,
                  height: 1.0,
                ),
                Center(
                  child: buildIconRow(
                    firstIcon: Icons.newspaper,
                    text: 'Personnalisation',
                    secondIcon: Icons.chevron_right,
                    onPressed: () {
                      print("Chargement");
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Bouton_Outlined(
                  texte: 'Enregistrer',
                  onPressed: () {
                    // Logique à exécuter lorsqu'on appuie sur le bouton
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildIconRow({
    required IconData firstIcon,
    required String text,
    required IconData secondIcon,
    required VoidCallback onPressed,
  }) {
    return Row(
      children: [
        Icon(
          firstIcon,
          // color: Color(0xFF2f82C4),
          color: Colors.blueAccent,
          size: 20,
        ),
        SizedBox(
          width: 20,
        ),
        Text(text),
        Spacer(),
        IconButton(
          icon: Icon(
            secondIcon,
            //    color: Colors.white,
            size: 16,
          ),
          onPressed: () {
            print("Bouton pressé !");
            onPressed();
          },
        ),
      ],
    );
  }
}
