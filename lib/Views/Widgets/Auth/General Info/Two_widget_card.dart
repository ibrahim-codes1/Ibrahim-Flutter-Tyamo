import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoWidgetCard extends StatelessWidget {
  final String text1;
  final String value1;
  final Color? txtClr1;
  final Color? clr1;
  final Widget? subwidget1;

  final String text2;
  final String value2;
  final Color? txtClr2;
  final Color? clr2;
  final Widget? subwidget2;

  const TwoWidgetCard({
    super.key,
    required this.text1,
    required this.value1,
    this.txtClr1,
    this.subwidget1,
    this.clr1,
    required this.text2,
    required this.value2,
    this.txtClr2,
    this.subwidget2,
    this.clr2,
  });

  Widget buildSection(String title, String value, Color? txtColor, Widget? subwidget) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 5),
        subwidget ??
            Text(
              value,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w900,
                color: txtColor ?? const Color(0xFFF57D7C),
                fontSize: 18,
              ),
            ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: Colors.white, // keep card background neutral
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSection(text1, value1, txtClr1, subwidget1),
              const SizedBox(height: 10),
              buildSection(text2, value2, txtClr2, subwidget2),
            ],
          ),
        ),
      ),
    );
  }
}
