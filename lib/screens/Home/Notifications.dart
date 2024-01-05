import 'package:flutter/material.dart';

import '../../widget.dart/Input.dart';
import '../../widget.dart/button.dart';
import '../../widget.dart/navabar.dart';
import 'home.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  bool showDrawer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        //     title: "Mon Titre",
        leadingIconData: Icons.chevron_left,
        onDrawerIconPressed: () {
          setState(() {
            showDrawer = !showDrawer;
          });
        },
        onLeadingPressed: () {
          // Action à effectuer lorsque l'utilisateur clique sur le bouton de gauche
          print("Bouton de gauche cliqué !");
        },
      ),
      body: ListView(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Text(
                  "Mes Objets ",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              NotificationRecenteAvecCroix(
                titre: 'La vie est un roman',
                description: 'Nouvelle Route Nsimeyong',
                imagePath: 'assets/images/livre2.png',
              ),
              NotificationRecenteAvecCroix(
                titre: 'La vie est un roman',
                description: 'Nouvelle Route Nsimeyong',
                imagePath: 'assets/images/livre2.png',
              ),
              NotificationRecenteSansCroix(
                titre: 'La vie est un roman',
                description: 'Nouvelle Route Nsimeyong',
                imagePath: 'assets/images/livre2.png',
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ],
      ),
      endDrawer: showDrawer ? MyDrawer() : null,
    );
  }
}

class NotificationRecenteAvecCroix extends StatelessWidget {
  final String description;
  final String titre;
  final String imagePath;

  NotificationRecenteAvecCroix(
      {
      // required this.width,
      // required this.height,
      required this.description,
      required this.imagePath,
      required this.titre});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //  width: 92,
          height: 91,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            //    borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              // BoxShadow(
              //   color: Colors.black.withOpacity(0.3),
              //   blurRadius: 5.0,
              //   offset: Offset(0, 2),
              // ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 12, // Adjusted top distance for the image
              // right: 0,
            ),
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                      left: 27,
                      //  top: 12, // Adjusted top distance for the image
                      // right: 0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          child: ClipOval(
                            child: Image.asset(
                              width: 35,
                              height: 35,
                              // borderRadius: BorderRadius.circular(10.0),
                              imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(
                      //  top: 37, // Adjusted top distance for the text
                      left: 12,
                    ),
                    child: Container(
                      width: 175,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titre,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            description,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                          ),
                        ],
                      ),
                    )),
                Spacer(),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFD6847),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        iconSize: 17,
                        icon: const Icon(Icons.close),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 27,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        //     RootPage()
      ],
    );
  }
}

class NotificationRecenteSansCroix extends StatelessWidget {
  final String description;
  final String titre;
  final String imagePath;

  NotificationRecenteSansCroix(
      {
      // required this.width,
      // required this.height,
      required this.description,
      required this.imagePath,
      required this.titre});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //  width: 92,
          height: 91,
          decoration: BoxDecoration(
            color: Colors.white,
            //    borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              // BoxShadow(
              //   color: Colors.black.withOpacity(0.3),
              //   blurRadius: 5.0,
              //   offset: Offset(0, 2),
              // ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 12, // Adjusted top distance for the image
              // right: 0,
            ),
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                      left: 27,
                      //  top: 12, // Adjusted top distance for the image
                      // right: 0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          child: ClipOval(
                            child: Image.asset(
                              width: 35,
                              height: 35,
                              // borderRadius: BorderRadius.circular(10.0),
                              imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(
                      //  top: 37, // Adjusted top distance for the text
                      left: 12,
                    ),
                    child: Container(
                      width: 175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titre,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            description,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        //     RootPage()
      ],
    );
  }
}
