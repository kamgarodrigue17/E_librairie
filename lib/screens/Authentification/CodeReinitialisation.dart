import 'package:flutter/material.dart';

import '../../widget.dart/button.dart';
import 'Congratulation.dart';

class CodeReinitialisation extends StatefulWidget {
  const CodeReinitialisation({Key? key}) : super(key: key);

  @override
  _CodeReinitialisationState createState() => _CodeReinitialisationState();
}

class _CodeReinitialisationState extends State<CodeReinitialisation> {
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();
  TextEditingController textFieldController3 = TextEditingController();
  TextEditingController textFieldController4 = TextEditingController();
  TextEditingController textFieldController5 = TextEditingController();

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
                ],
              ),
              SizedBox(height: 17),
              Center(
                child: Bouton(
                  texte: 'Envoyer',
                  onPressed: () {
                    if (areAllFieldsFilled()) {
                      // Tous les champs sont remplis, vous pouvez envoyer
                      print("Envoyer");
                      print(textFieldController1);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Congratulation()),
                      );
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
                    "40",
                    style: TextStyle(color: Color(0xFFFD6847)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Vous n’avez pas reçu de message ?  "),
                  TextButton(
                    onPressed: () => {},
                    child: Text(
                      "Renvoyer",
                      style: TextStyle(color: Color(0xFFFD6847)),
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
          onChanged: (value) {
            // Vous pouvez ajouter des validations ou des actions supplémentaires ici si nécessaire
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
        textFieldController5.text.isNotEmpty;
  }
}
