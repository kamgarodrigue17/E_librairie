import 'package:flutter/material.dart';

class ImageGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 329,
            height: 140,
            color: Colors.white,
          ),
          Positioned(
            left: 0,
            child: ImageWidget(
              width: 71,
              height: 98,
              imagePath: 'assets/images/livre5.png',
            ),
          ),
          Positioned(
            left: 44,
            child: ImageWidget(
              width: 89,
              height: 122,
              imagePath: 'assets/images/livre4.png',
            ),
          ),
          Positioned(
            left: 259,
            child: ImageWidget(
              width: 71,
              height: 98,
              imagePath: 'assets/images/livre3.png',
            ),
          ),
          Positioned(
            left: 204,
            child: ImageWidget(
              width: 89,
              height: 122,
              imagePath: 'assets/images/livre2.png',
            ),
          ),
          Positioned(
            left: 108,
            child: ImageWidget(
              width: 113,
              height: 155,
              imagePath: 'assets/images/livre1.png',
            ),
          ),
        ],
      ),
    ]);
  }
}

class ImageWidget extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;

  ImageWidget({
    required this.width,
    required this.height,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ImageRecent extends StatelessWidget {
  final String description;
  final String titre;
  final String imagePath;

  ImageRecent({
    // required this.width,
    // required this.height,
    required this.description,
    required this.titre,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 92,
          height: 127,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              // BoxShadow(
              //   color: Colors.black.withOpacity(0.3),
              //   blurRadius: 5.0,
              //   offset: Offset(0, 2),
              // ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // SizedBox(
        //   height: 9,
        // ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Container(
            width: 92,
            child: Column(
              children: [
                Text(
                  description,
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  titre,
                  style: TextStyle(
                      fontSize: 6,
                      fontWeight: FontWeight.w400,
                      color: Color(0x666666)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
