import 'package:elibrairy/Services/AnnonceService.dart';
import 'package:elibrairy/Services/AuthService.dart';
import 'package:elibrairy/Services/Dio._client.dart';
import 'package:flutter/material.dart';

import '../../model/Annonce.dart';
import '../../widget.dart/Galery_image_and_recent.dart';
import '../../widget.dart/button.dart';
import '../../widget.dart/list.dart';
import '../../widget.dart/navabar.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showDrawer = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context
        .read<AnnonceService>()
        .getUser(context.read<AuthService>().currentUser!.id);
  }

  @override
  Widget build(BuildContext context) {
    final annonceService = context.watch<AnnonceService>();

    return Scaffold(
      appBar: MyAppBar(
        //     title: "Mon Titre",
        leadingIconData: Icons.menu,
        onDrawerIconPressed: () {
          setState(() {
            showDrawer = !showDrawer;
          });
        },
        onLeadingPressed: () {
          context
              .read<AnnonceService>()
              .getUser(context.read<AuthService>().currentUser!.id);

          // Action à effectuer lorsque l'utilisateur clique sur le bouton de gauche
          print("Bouton de gauche cliqué !");
        },
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 23),
                child: Column(
                  children: [
                    TextField(
                      // obscureText: true, // Pour les mots de passe
                      style: TextStyle(
                          //  color: Color.fromARGB(0, 0, 0, 30)
                          ), // Couleur du texte
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 20,
                        ),

                        labelText: 'Recherche',
                        labelStyle: TextStyle(
                            color: Color(0xFF6C6C6C),
                            fontSize: 12), // Couleur du texte du label
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 31),
                      ),
                    ),
                    SizedBox(
                      height: 39,
                    ),
                    ImageGallery(),
                    SizedBox(
                      height: 43,
                    ),
                    Row(
                      children: [
                        Text(
                          'Plus récent',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            //  color: Color(0x3D3D3D),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 18,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(annonceService.annonces.length,
                          (index) {
                        Annonce annonce = annonceService.annonces[index];

                        return ImageRecent(
                          description: annonce.article.description!,
                          titre: annonce.article.nom!,
                          imagePath: baseurl + annonce.article.photo!,
                        );
                      }),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Spacer(), // Ajout d'un espaceur à gauche pour pousser le bouton à droite
                    Padding(
                      padding: EdgeInsets.only(right: 28),
                      child: Bouton_Outlined_plus_icone(
                        texte: 'Voir Plus',
                        onPressed: () {
                          print('Juste test');
                        },
                        Icone_du_bouton: Icons.add,
                        isFilled: false,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    'Il  a  7 Jours',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Column(
              children: List.generate(annonceService.annonces.length, (index) {
                Annonce annonce = annonceService.annonces[index];
                return ListeRecent(
                    description: "annonce.titre!,",
                    lieu: annonce.localisation!,
                    date: annonce.date!,
                    imagePath: baseurl + "annonce.article.photo!",
                    heure: '14h');
              }),
            ),
          ],
        )
      ]),
      endDrawer: showDrawer ? MyDrawer() : null,
    );
  }
}
