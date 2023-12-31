import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  void Function()? onTap;
  Color textColor, color;
  String text;
  Button(
      {super.key,
      required this.onTap,
      required this.text,
      required this.textColor,
      required this.color});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        alignment: Alignment.center,
        height: 47,
        width: width * 0.8,
        child: Text(
          this.text,
          style: GoogleFonts.poppins(
              color: this.textColor,
              fontSize: 14,
              textStyle: Theme.of(context).textTheme.labelLarge),
        ),
        decoration: BoxDecoration(
            color: this.color, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

/*J'ai add tout  ceci */

Widget Bouton({
  required String texte,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(
        Size(300, 48), // Définissez la largeur et la hauteur du bouton
      ),
      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFD6847)),
    ),
    onPressed: onPressed,
    child: Text(
      texte,
      style: TextStyle(
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

Widget Bouton_Outlined({
  required String texte,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(
        Size(300, 48), // Définissez la largeur et la hauteur du bouton
      ),
      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          color: Color(0xFFFD6847), // Couleur de la bordure
          width: 1.0, // Largeur de la bordure
        ),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      texte,
      style: TextStyle(
        fontSize: 12,
        color: Color(0xFFFD6847),
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

Widget Bouton_Outlined_plus_icone({
  required String texte,
  required VoidCallback onPressed,
  required IconData? Icone_du_bouton,
  bool isFilled = false,
}) {
  return ElevatedButton(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(
        Size(109, 34), // Définissez la largeur et la hauteur du bouton
      ),
      backgroundColor: isFilled
          ? MaterialStateProperty.all<Color>(
              Color(0xFFFD6847)) // Couleur orange si isFilled est true
          : MaterialStateProperty.all<Color>(
              Color(0xFFFFFFFF)), // Couleur blanche sinon
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          color: Color(0xFFFD6847), // Couleur de la bordure
          width: 1.0, // Largeur de la bordure
        ),
      ),
    ),
    onPressed: onPressed,
    child: Row(
      children: [
        Text(
          texte,
          style: TextStyle(
            fontSize: 11,
            color: isFilled
                ? Colors.white
                : Color(
                    0xFFFD6847), // Couleur blanche si isFilled est true, sinon couleur orange
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(), // Ajoutez cet espaceur pour pousser l'icône à droite
        Icon(
          Icone_du_bouton,
          size: 10,
          color: isFilled
              ? Colors.white
              : Color(
                  0xFFFD6847), // Couleur blanche si isFilled est true, sinon couleur orange
        ),
      ],
    ),
  );
}
