import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onevaluecard extends StatelessWidget {
  final String value;
  final Color Clr;
  final Color? txtClr;

  Onevaluecard({required this.value,required this.Clr, this.txtClr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      child: Card(
        color: Clr,
        elevation: 10,
        child: Center(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              value,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w900,
                fontSize: 15,
                color:txtClr ?? Colors.white,
              ),
              textAlign: TextAlign.center,
              textScaleFactor: 1,
            ),
          ),
        ),
      ),
    );
  }
}
