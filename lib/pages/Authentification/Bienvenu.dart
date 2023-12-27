import 'package:flutter/material.dart';

class Bienvenu extends StatelessWidget {
  const Bienvenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(
        children: [
          Column(
            children: [
              // Expanded(
              // child:
              Stack(
                children: [
                  Image.asset(
                    'assets/images/bienvenu.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    //           color: Color.fromRGBO(255, 255, 255, 0.5),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 400,
                      ),
                      Column(
                        children: [
                          Text("sdf  sd"),
                          Container(
                            width: 757,
                            height: 566,
                            constraints: BoxConstraints.expand(),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(757),
                                bottomRight: Radius.circular(757),
                              ),
                              gradient: LinearGradient(
                                colors: [Color(0xFF27A9E1), Color(0xFF2F358A)],
                                stops: [0.1412, 0.6613],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Votre contenu ici',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              // ),

              // Text('data')
            ],
          ),
        ],
      )),
    );
  }
}
