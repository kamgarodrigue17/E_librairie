import 'package:elibrairy/Services/AuthService.dart';
import 'package:elibrairy/screens/RootPage.dart';
import 'package:elibrairy/widget.dart/Input.dart';
import 'package:elibrairy/widget.dart/Loader.dart';
import 'package:elibrairy/widget.dart/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ftoast/ftoast.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscuretext = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthService>();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
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
                        EdgeInsets.only(top: height * .1, left: 16, right: 16),
                    children: [
                      Text(
                        "Connexion",
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
                          hintText: "Adresse mail",
                          controller: emailController,
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
                          controller: passwordController,
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
                          onTap: () {
                            dynamic credentials = {
                              "email": emailController.text,
                              "password": passwordController.text
                            };
                            setState(() {
                              isLoading = true;
                            });
                            context
                                .read<AuthService>()
                                .login(credentials)
                                .then((value) {
                              setState(() {
                                isLoading = false;
                              });
                              context.read<AuthService>().setIndex(0);
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RootPage(),
                              ));
                            }).catchError((onError) {
                              FToast.toast(
                                context,
                                msg: "${onError}",
                                subMsg: "",
                                corner: 20.0,
                                duration: 2000,
                                padding: const EdgeInsets.all(20),
                              );
                              setState(() {
                                isLoading = false;
                              });
                            });
                          },
                          text: "Connexion",
                          textColor: Colors.white,
                          color: Color.fromRGBO(253, 104, 71, 1)),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Mot de passe oublié ?",
                        textAlign: TextAlign.right,
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Color.fromRGBO(41, 130, 196, 1),
                            textStyle: Theme.of(context).textTheme.bodySmall),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RootPage(),
                          ));
                        },
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
                              border: Border.all(
                                  color: Colors.black.withOpacity(.2)),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/Vector 45.png",
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/Group 19.png",
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/Vector 47.png",
                  fit: BoxFit.cover,
                ),
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
        if (isLoading) Loader()
      ],
    ));
  }
}
