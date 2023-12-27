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
