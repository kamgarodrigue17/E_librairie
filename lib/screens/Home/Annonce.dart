import 'dart:io';

import 'package:elibrairy/Services/AnnonceService.dart';
import 'package:elibrairy/Services/AuthService.dart';
import 'package:elibrairy/screens/RootPage.dart';
import 'package:elibrairy/widget.dart/Loader.dart';
import 'package:flutter/material.dart';

import '../../widget.dart/Input.dart';
import '../../widget.dart/button.dart';
import '../../widget.dart/navabar.dart';
import 'home.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:provider/provider.dart';
import 'package:ftoast/ftoast.dart';

class Annonce extends StatefulWidget {
  const Annonce({super.key});

  @override
  State<Annonce> createState() => _AnnonceState();
}

class _AnnonceState extends State<Annonce> {
  Future<void> _selectrectFromGallery() async {
    final picker = ImagePicker();
    print("object");
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // L'image a été sélectionnée avec succès.
      // Vous pouvez utiliser pickedFile.path pour accéder au chemin de l'image.
      // Par exemple, vous pouvez l'afficher dans un widget Image.

      setState(() {
        photo = pickedFile.path;
      });
    } else {
      // L'utilisateur a annulé la sélection de l'image.
    }
  }

  bool isLoading = false;
  String photo = "";
  TextEditingController nomController = new TextEditingController();
  TextEditingController titreController = new TextEditingController();
  TextEditingController descController = new TextEditingController();
  TextEditingController localisationController = new TextEditingController();
  TextEditingController dateController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: MyAppBar(
          //     title: "Mon Titre",
          leadingIconData: Icons.chevron_left,
          onLeadingPressed: () {
            // Action à effectuer lorsque l'utilisateur clique sur le bouton de gauche
            print("Bouton de gauche cliqué !");
          },
        ),
        body: Stack(
          children: [
            Container(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40, left: 10),
                          child: Container(
                            width: 150,
                            child: Text(
                              'Ajoutez une annonce',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod "),
                        Input(
                            hintText: "Nom de l article",
                            controller: nomController,
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
                            hintText: "description",
                            controller: nomController,
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.black.withOpacity(.3),
                            ),
                            obscureText: false,
                            onChanged: (value) {}),
                        SizedBox(
                          height: 16,
                        ),
                        DottedBorder(
                            borderType: BorderType.RRect,
                            child: InkWell(
                              onTap: () => _selectrectFromGallery(),
                              child: Container(
                                padding: EdgeInsets.all(16),
                                alignment: Alignment.bottomCenter,
                                height: 150,
                                child: Container(
                                  width: width,
                                  height: 50,
                                  child: Column(
                                    children: [
                                      Text("Verification",
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.inknutAntiqua(
                                              fontSize: 17,
                                              color: Colors.black12,
                                              height: 1.2,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium)),
                                      Text(
                                          "Appuyer ici  pour televerser un fichier",
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              height: 1,
                                              color: Colors.black12,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge))
                                    ],
                                  ),
                                ),
                                width: width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: FileImage(File(photo))),
                                  color: Color.fromRGBO(217, 217, 217, .25),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Input(
                            hintText: "date",
                            onTap: () {
                              showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2020),
                                      lastDate: DateTime.now())
                                  .then((value) {
                                setState(() {
                                  dateController.text = value.toString();
                                });
                              });
                            },
                            controller: dateController,
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
                            onTap: () async {
                              /* var p = await showSimplePickerLocation(
                          context: context,
                          isDismissible: true,
                          title: "location picker",
                          textConfirmPicker: "pick",
                          initPosition: GeoPoint(
                            latitude: 47.4358055,
                            longitude: 8.4737324,
                          ),
                          radius: 8.0,
                        );
                        if (p != null) {
                          notifier.value = p;
                        }*/
                            },
                            hintText: "Localisation",
                            controller: localisationController,
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.black.withOpacity(.3),
                            ),
                            obscureText: false,
                            onChanged: (value) {}),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Bouton_Outlined_plus_icone(
                              texte: 'Annuler',
                              onPressed: () {
                                print('Juste test');
                              },
                              Icone_du_bouton: Icons.close,
                              isFilled: false,
                            ),
                            Spacer(), // Ajout d'un espaceur à gauche pour pousser le bouton à droite

                            Bouton_Outlined_plus_icone(
                              texte: 'Ajouter',
                              onPressed: () {
                                var data = {
                                  "nom": nomController.text,
                                  "photo": photo,
                                  "description": descController.text,
                                  "titre": titreController.text,
                                  "localisation": localisationController.text,
                                  "iduser": context
                                      .read<AuthService>()
                                      .currentUser!
                                      .id!,
                                };

                                setState(() {
                                  isLoading = true;
                                });
                                context
                                    .read<AnnonceService>()
                                    .register(data)
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

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()),
                                );
                              },
                              Icone_du_bouton: Icons.add,
                              isFilled: true,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (isLoading) Loader()
          ],
        ));
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
            5, // Définir le nombre de lignes que le TextField doit afficher.
        decoration: InputDecoration(
          labelText: 'Description',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
