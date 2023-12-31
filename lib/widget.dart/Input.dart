import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Input extends StatelessWidget {
  String hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? obscureText;
  void Function(String)? onChanged;
  Input(
      {super.key,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      required this.onChanged,
      this.obscureText});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * .8,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(.2)),
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        obscureText: this.obscureText!,
        onChanged: (value) {},
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: this.hintText,
            hintStyle: GoogleFonts.poppins(
                fontSize: 13,
                color: Colors.black.withOpacity(.3),
                textStyle: Theme.of(context).textTheme.bodySmall),
            suffixIcon: this.suffixIcon,
            prefixIcon: this.prefixIcon),
      ),
    );
  }
}

/*J'ai add tout ceci*/

Widget buildCustomTextField({
  String labelText = 'Nom',
  String hintText = '',
  TextEditingController? controller,
  IconData? iconData, // Icône facultative
}) {
  return Column(
    children: [
      Row(
        children: [
          if (iconData != null) // Vérifie si une icône est spécifiée
            Padding(
              padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
              // child: Icon(iconData),
            ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
            child: Text(labelText),
          ),
          Text(
            " *",
            style: TextStyle(color: Color(0xFFFD6847)),
          ),
        ],
      ),
      TextField(
        controller: controller,
        style: TextStyle(), // Couleur du texte
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconData,
            color: Color(0xFF6C6C6C),
          ),
          labelText: hintText,
          labelStyle: TextStyle(
            color: Color(0xFF6C6C6C),
            fontSize: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 31),
        ),
      ),
    ],
  );
}

Widget buildCustomTextField_Description(
    {String labelText = 'Description', String hintText = ''}) {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
            child: Text(labelText),
          ),
          Text(
            " *",
            style: TextStyle(color: Color(0xFFFD6847)),
          ),
        ],
      ),
      TextField(
        maxLines: 5,
        style: TextStyle(), // Couleur du texte
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: TextStyle(
            color: Color(0xFF6C6C6C),
            fontSize: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 31),
        ),
      ),
    ],
  );
}
