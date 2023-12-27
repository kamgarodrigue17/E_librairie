import 'package:elibrairy/widget.dart/Input.dart';
import 'package:elibrairy/widget.dart/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool obscuretext = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * .7,
                width: width,
                alignment: Alignment.center,
                // color: Colors.amber,
                child: ListView(
                  padding:
                      EdgeInsets.only(top: height * .01, left: 16, right: 16),
                  children: [
                    Text(
                      "Inscription",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 32,
                          color: Color.fromRGBO(78, 78, 78, 1),
                          textStyle: Theme.of(context).textTheme.labelLarge),
                    ),
                    Text(
                      "Veuillez renseigner vos informations",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Color.fromRGBO(78, 78, 78, 1),
                          textStyle: Theme.of(context).textTheme.bodySmall),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Input(
                        hintText: "Saisissez le nom svp",
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.black.withOpacity(.3),
                        ),
                        obscureText: false,
                        onChanged: (value) {}),
                    SizedBox(
                      height: 16,
                    ),
                    Input(
                        hintText: "Saisissez votre adresse mail svp",
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.black.withOpacity(.3),
                        ),
                        obscureText: false,
                        onChanged: (value) {}),
                    SizedBox(
                      height: 16,
                    ),
                    Input(
                        hintText: "Confirmation du mot de passe",
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.black.withOpacity(.3),
                        ),
                        obscureText: false,
                        onChanged: (value) {}),
                    SizedBox(
                      height: 16,
                    ),
                    Input(
                        hintText: "Mot de passe",
                        prefixIcon: Icon(
                          Icons.person_3_outlined,
                          color: Colors.black.withOpacity(.3),
                        ),
                        suffixIcon: obscuretext
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    obscuretext = !obscuretext;
                                    obscuretext = !obscuretext;
                                  });
                                },
                                icon: Icon(
                                  Icons.visibility_outlined,
                                  color: Colors.black.withOpacity(.3),
                                ))
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    obscuretext = !obscuretext;
                                  });
                                },
                                icon: Icon(
                                  Icons.visibility_off_outlined,
                                  color: Colors.black.withOpacity(.3),
                                )),
                        obscureText: obscuretext,
                        onChanged: (value) {}),
                    SizedBox(
                      height: 16,
                    ),
                    Button(
                        onTap: () {},
                        text: "Connexion",
                        textColor: Colors.white,
                        color: Color.fromRGBO(253, 104, 71, 1)),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 47,
                        width: width * 0.8,
                        child: Text(
                          "Vous n’avez pas de compte ?",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(78, 78, 78, 1),
                              fontSize: 14,
                              textStyle:
                                  Theme.of(context).textTheme.labelLarge),
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black.withOpacity(.2)),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/Vector 45 (1).png"),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/Group 21 (1).png"),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/Vector 46.png"),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 17,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
