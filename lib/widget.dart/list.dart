import 'package:flutter/material.dart';

class ListeRecent extends StatelessWidget {
  final String description;
  final String date;
  final String lieu;
  final String heure;
  final String imagePath;

  ListeRecent(
      {
      // required this.width,
      // required this.height,
      required this.description,
      required this.date,
      required this.lieu,
      required this.imagePath,
      required this.heure});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //  width: 92,
          height: 109,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            //  borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              // BoxShadow(
              //   color: Colors.black.withOpacity(0.3),
              //   blurRadius: 5.0,
              //   offset: Offset(0, 2),
              // ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 53,
                  right: 23,
                ),
                child: Container(
                  width: 67,
                  height: 85,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            description,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          Text(
                            lieu,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Color.fromRGBO(
                                  0, 0, 0, 0.8), // Opacité de 0.7
                            ),
                          ),
                          Text(
                            date,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                          ),
                          Text(heure,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                              )),
                        ],
                      ))),
              Spacer(),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xFF27A9E1),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        color: Colors.white,
                        iconSize: 17,
                        icon: const Icon(Icons.done),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ],
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