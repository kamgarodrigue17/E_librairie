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
