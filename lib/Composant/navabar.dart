import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final IconData? leadingIconData;
  final VoidCallback? onLeadingPressed;

  MyAppBar({Key? key, this.title, this.leadingIconData, this.onLeadingPressed})
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
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/bienvenu.png',
                    width: 35,
                    height: 35,
                    fit: BoxFit.cover,
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
