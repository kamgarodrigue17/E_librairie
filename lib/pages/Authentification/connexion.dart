import 'package:flutter/material.dart';

class Connexion extends StatelessWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(
        children: [
          Column(
            children: [
              // Expanded(
              // child:
              Stack(
                children: [
                  Image.asset(
                    'assets/images/connexion.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    top: 1,
                    left: 1,
                    child: IconButton(
                      icon: Icon(Icons.chevron_left, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              // ),
              SizedBox(
                height: 25,
              ),
              Text(
                "CONNEXION",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              Text(
                "Veuillez renseigner vos informations",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
              ),
              SizedBox(height: 33),
              Padding(
                padding:
                    EdgeInsets.only(top: 5, bottom: 5.0, right: 31, left: 31),
                child: TextField(
                  // obscureText: true, // Pour les mots de passe
                  style: TextStyle(
                      //  color: Color.fromARGB(0, 0, 0, 30)
                      ), // Couleur du texte
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(18.5),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.black,
                      ),
                    ),
                    labelText: 'Adresse mail',
                    labelStyle: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 12), // Couleur du texte du label
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 15, horizontal: 31), // Ajustez la taille ici

                    //floatingLabelBehavior: FloatingLabelBehavior.always, // Texte au-dessus de la bordure
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 5, bottom: 5.0, right: 31, left: 31),
                child: TextField(
                  // obscureText: true, // Pour les mots de passe
                  style: TextStyle(
                      //  color: Color.fromARGB(0, 0, 0, 30)
                      ), // Couleur du texte
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(18.5),
                      child: Icon(
                        Icons.lock_outlined,
                        color: Colors.black,
                      ),
                    ),
                    labelText: 'Mot de passe',
                    labelStyle: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 12), // Couleur du texte du label
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 15, horizontal: 31), // Ajustez la taille ici

                    //floatingLabelBehavior: FloatingLabelBehavior.always, // Texte au-dessus de la bordure
                  ),
                ),
              ),
              // SizedBox(
              //   height: 37,
              // ),
              Padding(
                padding: EdgeInsets.only(right: 30, bottom: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () => {},
                    child: Text(
                      "Mot de passe oublié ?",
                      style: TextStyle(
                          color: Color(0xFF2982C4),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(300,
                        48), // Définissez la largeur et la hauteur du bouton
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFD6847)),
                ),
                onPressed: () => {},
                child: const Text(
                  "Connexion",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              const Text("____________________ OU  ____________________"),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 135.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Mettez ici le code à exécuter lorsque le bouton est pressé
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Couleur de fond du bouton
                      onPrimary: Colors.black, // Couleur du texte du bouton
                      elevation: 3, // Élévation du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Bordures arrondies
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 9.625,
                          height: 17.5,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'Google',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 135.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Mettez ici le code à exécuter lorsque le bouton est pressé
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Couleur de fond du bouton
                      onPrimary: Colors.black, // Couleur du texte du bouton
                      elevation: 3, // Élévation du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Bordures arrondies
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          width: 9.625,
                          height: 17.5,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'Facebook',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(300,
                          48), // Définissez la largeur et la hauteur du bouton
                    ),
                    side: MaterialStateProperty.all<BorderSide>(
                      BorderSide(
                        color: Colors.black, // Couleur de la bordure
                        //  width: 2.0, // Épaisseur de la bordure
                      ),
                    )
                    //     backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                onPressed: () => {},
                child: const Text(
                  "Vous n’avez pas de compte ?",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 12),
              // Text('data')
            ],
          ),
        ],
      )),
    );
  }
}
