import 'package:elibrairy/Services/Authentification.dart';
import 'package:elibrairy/screens/Authentification/CodeReinitialisation.dart';
import 'package:elibrairy/screens/Authentification/Congratulation.dart';
import 'package:elibrairy/screens/Home/confirmation.dart';
import 'package:flutter/material.dart';

import '../../widget.dart/Input.dart';
import 'connexion.dart';

class MotPasseOublier extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150, // Ajustez la largeur selon vos besoins
                height: 83,
                child: Text(
                  'Mot de passe oublié ?',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt',
                style: TextStyle(
                  color: Color(0xFF6C6C6C),
                ),
              ),
              SizedBox(height: 31),
              Center(
                  child: Container(
                width: 300,
                child: buildCustomTextField(
                  labelText: 'Mot de passe',
                  hintText: 'Entrez votre mot de passe',
                  iconData: Icons.person,
                  controller: emailController, // Ajout du contrôleur
                ),
              )),
              SizedBox(height: 17),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(300, 48),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFFD6847)),
                  ),
                  onPressed: () async {
                    if (areAllFielFilled()) {
                      String email = emailController.text;
                      String message = await passwordForget(email);

                      // Tous les champs sont remplis, vous pouvez connecter l'utilisateur
                      if (message == 'SUCESS') {
                        // Naviguer vers l'écran de félicitations
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CodeReinitialisation(),
                          ),
                        );
                      } else {
                        // Afficher un message d'erreur (à des fins de débogage)
                        print(
                            'Erreur lors de la verification du password: $message');
                      }
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
                    "Envoyer",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool areAllFielFilled() {
    return emailController.text.isNotEmpty;
  }
}
