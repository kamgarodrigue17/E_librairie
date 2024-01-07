import 'dart:async';

import 'package:elibrairy/Services/Authentification.dart';
import 'package:elibrairy/color.dart';
import 'package:elibrairy/model/Token.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widget.dart/button.dart';
import 'Congratulation.dart';

class CodeReinitialisation extends StatefulWidget {
  const CodeReinitialisation({
    Key? key,
  }) : super(key: key);

  @override
  _CodeReinitialisationState createState() => _CodeReinitialisationState();
}

class _CodeReinitialisationState extends State<CodeReinitialisation> {
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();
  TextEditingController textFieldController3 = TextEditingController();
  TextEditingController textFieldController4 = TextEditingController();
  TextEditingController textFieldController5 = TextEditingController();
  TextEditingController textFieldController6 = TextEditingController();

/* Gestion du temps*/

  int secondsRemaining = 60;
  late Timer timer;
  bool isButtonClickable = false;

  @override
  void initState() {
    super.initState();
    // int userId = widget.userId;
    // Start the timer when the page is first displayed
    startTimer();
  }

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
                width: 100,
                height: 83,
                child: Text(
                  'Code de réinitialisation',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildTextField(textFieldController1),
                  buildTextField(textFieldController2),
                  buildTextField(textFieldController3),
                  buildTextField(textFieldController4),
                  buildTextField(textFieldController5),
                  buildTextField(textFieldController6),
                ],
              ),
              SizedBox(height: 17),
              Center(
                child: Bouton(
                  texte: 'Envoyer',
                  onPressed: () async {
                    if (areAllFieldsFilled()) {
                      // Tous les champs sont remplis, vous pouvez envoyer
                      print("Envoyer");
                      print(textFieldController1);

                      // L'id peut être laissé à null si le serveur attribue un identifiant
                      String token = textFieldController1.text +
                          textFieldController2.text +
                          textFieldController3.text +
                          textFieldController4.text +
                          textFieldController5.text +
                          textFieldController6.text;
                      // user_id: widget.userId,

                      String message = await NumberConfirmation(token);

                      if (message == 'SUCESS') {
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
                      print(textFieldController1.text);
                      // Affichez un message d'erreur ou prenez une autre action
                      print("Veuillez remplir tous les champs");
                    }
                  },
                ),
              ),
              SizedBox(height: 31),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('0:'),
                  Text(
                    "$secondsRemaining",
                    style: TextStyle(color: Color(0xFFFD6847)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Vous n’avez pas reçu de message ?  "),
                  TextButton(
                    onPressed: isButtonClickable
                        ? () => ActionButtonPress()
                        : null, // Enable/disable button based on the flag
                    child: Text(
                      "Renvoyer",
                      style: TextStyle(
                        color: isButtonClickable
                            ? Color(0xFFFD6847)
                            : Color(0xFF6C6C6C),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        width: 35,
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF6C6C6C),
            width: 2.0,
          ),
        ),
        child: TextField(
          controller: controller,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
          inputFormatters: [
            // FilteringTextInputFormatter.allow(
            //     RegExp(r'[0-9]')), // Allow only numeric digits
            LengthLimitingTextInputFormatter(1), // Limit to 1 character
          ],
          onChanged: (value) {
            // You can add additional validations or actions here if needed
          },
        ),
      ),
    );
  }

  bool areAllFieldsFilled() {
    return textFieldController1.text.isNotEmpty &&
        textFieldController2.text.isNotEmpty &&
        textFieldController3.text.isNotEmpty &&
        textFieldController4.text.isNotEmpty &&
        textFieldController6.text.isNotEmpty &&
        textFieldController5.text.isNotEmpty;
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        if (secondsRemaining > 0) {
          secondsRemaining--;
        } else {
          // Timer has reached 0, show your message and cancel the timer
          t.cancel();
          showEndMessage();
          isButtonClickable = true;
        }
      });
    });
  }

  void showEndMessage() {
    // Display your "Another send" message here
    print("Another send");
  }

  void ActionButtonPress() {
    // Your logic for handling button press goes here
  }
}
