import 'package:flutter/material.dart';
import 'package:flutter_application_1/Composant/Input.dart';
import 'package:flutter_application_1/Composant/pied_De_page.dart';
import 'package:flutter_application_1/pages/Authentification/Congratulation.dart';
import 'package:flutter_application_1/pages/Authentification/MotPasseOublier.dart';

class Connexion extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
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
              SizedBox(height: 25),
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
                padding: EdgeInsets.symmetric(horizontal: 31),
                child: buildCustomTextField(
                  labelText: 'Adresse mail',
                  hintText: 'Entrez votre adresse mail',
                  controller: emailController, // Ajout du contrôleur
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 31, vertical: 5),
                child: buildCustomTextField(
                  labelText: 'Mot de passe',
                  hintText: 'Entrez votre mot de passe',
                  //    iconData: Icons.person,
                  controller: passwordController, // Ajout du contrôleur
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30, bottom: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MotPasseOublier()),
                      )
                    },
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
                    Size(300, 48),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFD6847)),
                ),
                onPressed: () {
                  if (areAllFieldsFilled()) {
                    // Tous les champs sont remplis, vous pouvez connecter l'utilisateur
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Congratulation()),
                    );
                    print("Connexion");
                  } else {
                    // Affichez une alerte ou un message d'erreur
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Erreur'),
                          content: Text('Veuillez remplir tous les champs.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text(
                  "Connexion",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              BuilderEnd(context),
            ],
          ),
        ],
      ),
    );
  }

  bool areAllFieldsFilled() {
    return emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
  }
}
