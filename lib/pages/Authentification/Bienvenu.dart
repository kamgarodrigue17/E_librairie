import 'package:flutter/material.dart';

class Bienvenu extends StatelessWidget {
  const Bienvenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Container(
                  width: double.infinity,
                  height: 600,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/bienvenu.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                        color: Colors.black.withOpacity(0.4),
                        colorBlendMode: BlendMode.darken,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Recherche facile",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              width: 320,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      // Positioned(
                      //   bottom: 20.0,
                      //   left: 0,
                      //   right: 0,
                      //   child: Container(
                      //     height: 150,
                      //     color: Colors.black12,
                      //     child: Text('data'),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 10,
            color: Colors.black,
            child: Text('data'),
          ),
        ],
      ),
    );
  }
}
