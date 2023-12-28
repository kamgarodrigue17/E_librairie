import 'package:flutter/material.dart';

Widget buildCustomTextField({String labelText = 'Nom', String hintText = ''}) {
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
        style: TextStyle(), // Couleur du texte
        decoration: InputDecoration(
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
