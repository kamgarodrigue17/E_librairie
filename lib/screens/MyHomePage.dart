import 'package:elibrairy/screens/Login.dart';
import 'package:elibrairy/screens/SignUp.dart';
import 'package:elibrairy/widget.dart/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/Bienvenue avec image (1).png"))),
        child: Stack(
          children: [
            Positioned(
              top: 200,
              child: Container(
                //height: 100,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recherche facile",
                      style: GoogleFonts.poppins(
                          fontSize: 32,
                          color: Colors.white,
                          textStyle: Theme.of(context).textTheme.labelLarge),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Container(
                      width: width * .8,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.white,
                            textStyle: Theme.of(context).textTheme.labelLarge),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(top: 100),
                alignment: Alignment.center,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/Ellipse 335.png"))),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Button(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                      },
                      text: "Vous avez déjà un compte ?",
                      textColor: Color.fromRGBO(78, 78, 78, 1),
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Button(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUp(),
                            )),
                        text: "Vous n’avez pas de compte ?",
                        textColor: Colors.white,
                        color: Color.fromRGBO(253, 104, 71, 1))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
