import 'package:elibrairy/Services/Authentification.dart';
import 'package:elibrairy/color.dart';
import 'package:elibrairy/widget.dart/button.dart';
import 'package:flutter/material.dart';

import '../screens/Authentification/connexion.dart';
import '../screens/Home/Objet.dart';
import '../screens/Home/home.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final IconData? leadingIconData;
  final VoidCallback? onLeadingPressed;
  final VoidCallback? onDrawerIconPressed;
  MyAppBar(
      {Key? key,
      this.title,
      this.leadingIconData,
      this.onLeadingPressed,
      this.onDrawerIconPressed})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: leadingIconData != null
          ? IconButton(
              icon: Icon(
                leadingIconData,
                color: Colors.white,
              ),
              onPressed: onLeadingPressed,
            )
          : null,
      title: title != null
          ? Text(
              title!,
              style: TextStyle(fontSize: 20),
            )
          : null,
      actions: [
        // Vous pouvez ajouter d'autres actions ici si nécessaire
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF27A9E1), Color(0xFF2F358A)],
            stops: [0.0, 1.0],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  right: 10,
                ),
                child: GestureDetector(
                  onTap: onDrawerIconPressed,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/bienvenu.png',
                      width: 35,
                      height: 35,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeNavabar extends StatefulWidget {
  @override
  _HomeNavabarState createState() => _HomeNavabarState();
}

class _HomeNavabarState extends State<HomeNavabar> {
  bool showDrawer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Your Title",
        leadingIconData: Icons.menu,
        onDrawerIconPressed: () {
          setState(() {
            showDrawer = !showDrawer;
          });
        },
      ),
      body: Center(
        child: Text("Contenu de la page d'accueil"),
      ),
      endDrawer: showDrawer ? MyDrawer() : null,
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String userName = CurrentUser?.userName ?? "Nom par défaut";

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          /*     DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF27A9E1), Color(0xFF2F358A)],
                stops: [0.0, 1.0],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Text('Votre barre de navigation'),
          ),*/
          SizedBox(
            height: 12,
          ),
          ListTile(
            leading: ClipOval(
              child: Image.asset(
                'assets/images/bienvenu.png',
                width: 35,
                height: 35,
                fit: BoxFit.fill,
              ),
            ),
            title: Text(
              userName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 12,
          ),

          Divider(
            color: Colors.black,
            height: 1.0,
          ),

          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.format_list_bulleted_outlined,
              color: blue,
            ),
            title: const Text(
              'Historique',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            onTap: () {},
          ),

          ListTile(
            leading: Image.asset(
              'assets/images/people.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            title: const Text(
              'Mes objets',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(
              Icons.work_outline_rounded,
              color: blue,
            ),
            title: const Text(
              'Objets',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Objet_Creation()),
              );
            },
          ),
          SizedBox(
            height: 12,
          ),

          Divider(
            color: Colors.black,
            height: 1.0,
          ),

          ListTile(
              title: Bouton_Outlined_plus_icone(
            texte: 'Déconnexion',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Connexion()),
              );
            },
            Icone_du_bouton: null,
            //   isFilled: true,
          ))
          // Ajoutez d'autres options si nécessaire
        ],
      ),
    );
  }
}
