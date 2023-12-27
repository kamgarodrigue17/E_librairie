import 'package:flutter/material.dart';

class MotPasseOublier extends StatelessWidget {
  const MotPasseOublier({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.chevron_left, color: Colors.black),
            onPressed: () {
              // Navigator.pop(context);
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
                  child: TextField(
                    style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize:
                            13, // Ajustez la taille du texte selon vos besoins
                        fontWeight: FontWeight.w300),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            50), // Ajustez le borderRadius selon vos besoins
                      ),
                      hintText: 'Saisissez le adresse mail',
                    ),
                  ),
                )),
                SizedBox(height: 17),
                Center(
                  child: ElevatedButton(
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
      ),
    );
  }
}
