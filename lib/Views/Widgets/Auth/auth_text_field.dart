import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:tymao/Interfaces/Auth/register_services.dart';
class AuthTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final String labelText;
  final bool obscureText;
  final IconData icon;
  final size;
  final TextEditingController controller;

  AuthTextField({
    required this.size,
    required this.icon,
    required this.keyboardType,
    required this.labelText,
    required this.controller,
    required this.obscureText,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      style: GoogleFonts.poppins(fontSize: size),
      keyboardType: keyboardType,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: Color(0xffE7E7F2),
        filled: true,
        prefixIcon: Icon(icon, size: size),
        prefixIconColor: Color(0xff00205C),
        label: Text(labelText),
        labelStyle: GoogleFonts.poppins(fontSize: size, color: Colors.black),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
