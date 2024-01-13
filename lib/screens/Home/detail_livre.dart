import 'package:elibrairy/Services/Dio._client.dart';
import 'package:elibrairy/model/Annonce.dart';
import 'package:flutter/material.dart';

class detail_livre extends StatelessWidget {
  Annonce annonce;
  detail_livre({super.key, required this.annonce});

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
                  color: Color(0xff353434),
                  child: Column(
                    children: [
                      Container(
                        width: 131,
                        height: 179,
                        child: Image.network(
                          baseurl + annonce.article.photo!,
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
                            annonce.localisation!,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        annonce.date!,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 46, top: 54, right: 34),
                                  child: Column(
                                    children: [
                                      Text(
                                        annonce.article.nom!,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                        // textAlign: Align.,
                                      ),
                                      SizedBox(
                                        height: 35,
                                      ),
                                      Text(annonce.article.description!)
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
