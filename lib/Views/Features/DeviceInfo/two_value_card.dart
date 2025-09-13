import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoValueCard extends StatelessWidget {
  final String text;
  final String Value;
  final Color? txtClr;
  final Color? clr;
  final Widget? subwidget;
  TwoValueCard({
    required this.text,
    required this.Value,
    this.txtClr,
    this.subwidget,
    this.clr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr ?? Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            subwidget ??
                Text(
                  Value,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w900,
                    color: txtClr ?? Color(0xFFF57D7C),
                    fontSize: 18,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
