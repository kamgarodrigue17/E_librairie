import 'package:flutter/material.dart';
import 'package:flutter_application_1/Composant/Input.dart';
import 'package:flutter_application_1/Composant/bouton.dart';
import 'package:flutter_application_1/Composant/navabar.dart';

class detail_livre extends StatelessWidget {
  const detail_livre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xff353434),
                leading: IconButton(
                    icon: Icon(
                      Icons.chevron_left_sharp,
                      color: Colors.white,
                    ),
                    onPressed: () {})),
            body: ListView(
              children: [
                Container(
                  // height: 1500,
                  color: Color(0xff353434),
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 131,
                        height: 179,
                        child: Image.asset(
                          'assets/images/livre2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.pin_drop_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Nouvelle Route Nsimeyong",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Mercredi, 2 Feb 2022",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "14h30",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 405,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              //        blurRadius: 5.0,
                              //      offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 46, top: 54, right: 34),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Nom de l'objet",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                        // textAlign: Align.,
                                      ),
                                      SizedBox(
                                        height: 35,
                                      ),
                                      Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                                    ],
                                  ))
                            ]),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

class DescriptionTextField extends StatefulWidget {
  @override
  _DescriptionTextFieldState createState() => _DescriptionTextFieldState();
}

class _DescriptionTextFieldState extends State<DescriptionTextField> {
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _descriptionController,
        maxLines:
            5, // Définit le nombre de lignes que le TextField doit afficher.
        decoration: InputDecoration(
          labelText: 'Description',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
