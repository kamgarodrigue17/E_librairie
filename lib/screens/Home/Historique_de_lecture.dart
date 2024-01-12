import 'package:flutter/material.dart';

import '../../model/Annonce.dart';
import '../../widget.dart/Input.dart';
import '../../widget.dart/Loader.dart';
import '../../widget.dart/button.dart';
import '../../widget.dart/list.dart';
import '../../widget.dart/navabar.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'package:elibrairy/Services/AnnonceService.dart';
import 'package:elibrairy/Services/AuthService.dart';
import 'package:elibrairy/Services/Dio._client.dart';
import 'package:ftoast/ftoast.dart';

class HistoriqueLecture extends StatefulWidget {
  const HistoriqueLecture({super.key});

  @override
  State<HistoriqueLecture> createState() => _HistoriqueLectureState();
}

class _HistoriqueLectureState extends State<HistoriqueLecture> {
  bool showDrawer = false;
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context
        .read<AnnonceService>()
        .geth(context.read<AuthService>().currentUser!.id);
  }

  @override
  Widget build(BuildContext context) {
    final annonceService = context.watch<AnnonceService>();
    return Scaffold(
      appBar: MyAppBar(
        //     title: "Mon Titre",
        leadingIconData: Icons.chevron_left,
        onLeadingPressed: () {
          // Action à effectuer lorsque l'utilisateur clique sur le bouton de gauche
          print("Bouton de gauche cliqué !");
        },
        onDrawerIconPressed: () {
          setState(() {
            showDrawer = !showDrawer;
          });
        },
      ),
      body: RefreshIndicator(
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: Column(children: [
                          Text(
                            "Historique",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                              "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod"),
                          SizedBox(
                            height: 30,
                          ),
                          Row(children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xFF353434))),
                              onPressed: () => {},
                              child: Text(
                                'Toute les annonces',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                    color:
                                        Colors.black, // Couleur de la bordure
                                    width: 1.0, // Largeur de la bordure
                                  ),
                                ),
                              ),
                              onPressed: () => {},
                              child: Text(
                                'Objet récupéré',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ]),
                        ])),
                    Column(
                      children: List.generate(annonceService.annoncesh.length,
                          (index) {
                        Annonce annonce = annonceService.annoncesh[index];
                        print(annonce.toJson());
                        return ListeRecent(
                            onPressed: () {
                              setState(() {
                                isLoading = true;
                              });
                              context
                                  .read<AnnonceService>()
                                  .retouver(annonce.article.id)
                                  .then((value) {
                                setState(() {
                                  isLoading = false;
                                });
                                FToast.toast(
                                  context,
                                  msg: "article retrouver",
                                  subMsg: "",
                                  corner: 20.0,
                                  duration: 2000,
                                  color: Colors.green,
                                  padding: const EdgeInsets.all(20),
                                );
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
                            description: annonce.titre!,
                            lieu: annonce.localisation!,
                            date: annonce.date!,
                            imagePath: baseurl + annonce.article.photo!,
                            heure: '14h');
                      }),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ],
            ),
            if (isLoading) Loader()
          ],
        ),
        onRefresh: () => context
            .read<AnnonceService>()
            .geth(context.read<AuthService>().currentUser!.id),
      ),
      endDrawer: showDrawer ? MyDrawer() : null,
    );
  }
}
