import 'package:flutter/material.dart';
import 'package:flutter_application_1/Composant/pied_De_page.dart';
import 'package:flutter_application_1/pages/Authentification/Congratulation.dart';
import '../../Services/Authentification.dart';
import '../../model/user.dart';

class InscriptionAvecImage extends StatelessWidget {
  final TextEditingController nomController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController localisationController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  InscriptionAvecImage({Key? key}) : super(key: key);

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
                    'assets/images/InscriptionAvecImage.png',
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
              SizedBox(
                height: 25,
              ),
              Text(
                "INSCRIPTION",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              Text(
                "Veuillez renseigner vos informations",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
              ),
              SizedBox(height: 33),
              buildCustomTextField(
                labelText: 'Saisissez le nom svp',
                controller: nomController,
                iconData: Icons.person_outline,
              ),
              buildCustomTextField(
                labelText: 'Saisissez votre adresse mail svp',
                controller: emailController,
                iconData: Icons.email_outlined,
              ),
              buildCustomTextField(
                labelText: 'Votre Numero',
                controller: numberController,
                iconData: Icons.phone_outlined,
              ),
              buildCustomTextField(
                labelText: 'Votre localisation',
                controller: localisationController,
                iconData: Icons.pin_drop_outlined,
              ),
              buildCustomTextField(
                labelText: 'Mot de passe',
                controller: passwordController,
                iconData: Icons.lock_outlined,
                obscureText: true,
              ),
              buildCustomTextField(
                labelText: 'Confirmation du mot de passe',
                controller: confirmPasswordController,
                iconData: Icons.lock_outlined,
                obscureText: true,
              ),
              SizedBox(
                height: 37,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(300, 48),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFD6847)),
                ),
                onPressed: () async {
                  if (areAllFieldsFilled()) {
                    if (samePassword()) {
                      // Tous les champs sont remplis et les mots de passe sont identiques
                      // Créer un objet User avec les informations saisies
                      User newUser = User(
                        id: null, // L'id peut être laissé à null si le serveur attribue un identifiant
                        userName: nomController.text,
                        email: emailController.text,
                        number: numberController.text,
                        localisation: localisationController.text,
                        password: passwordController.text,
                      );

                      // Appeler la fonction d'inscription
                      String message = await register(newUser);

                      // Afficher le message retourné par le serveur (à des fins de débogage)
                      print('Message du serveur: $message');

                      // Vérifier si l'inscription a réussi
                      if (message == 'Inscription réussie') {
                        // Naviguer vers l'écran de félicitations
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Congratulation(),
                          ),
                        );
                      } else {
                        // Afficher un message d'erreur (à des fins de débogage)
                        print('Erreur d\'inscription: $message');
                      }
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Erreur'),
                            content: Text("Le password n'est pas identique."),
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
              BuilderEnd(context)
            ],
          ),
        ],
      ),
    );
  }

  bool areAllFieldsFilled() {
    return nomController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty &&
        numberController.text.isNotEmpty &&
        localisationController.text.isNotEmpty;
  }

  bool samePassword() {
    return passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty &&
        passwordController.text == confirmPasswordController.text;
  }

  Widget buildCustomTextField({
    required String labelText,
    required TextEditingController controller,
    IconData? iconData,
    bool obscureText = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5.0, right: 31, left: 31),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconData,
            color: Color(0xFF6C6C6C),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color(0xFF6C6C6C),
            fontSize: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 31,
          ),
        ),
      ),
    );
  }
}
