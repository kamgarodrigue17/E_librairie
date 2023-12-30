import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Authentification/connexion.dart';
import 'package:flutter_application_1/pages/Authentification/inscriptionAvecImage.dart';

Widget BuilderEnd(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: EdgeInsets.only(left: 70, right: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(
                color: Colors.black,
                height: 1.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("OU"),
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
                height: 1.0,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 135.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
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
        ],
      ),
      SizedBox(
        height: 22,
      ),
      ElevatedButton(
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(
            Size(300, 48),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InscriptionAvecImage()),
          );
        },
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
    ],
  );
}
