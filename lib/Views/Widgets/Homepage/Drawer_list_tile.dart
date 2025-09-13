import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerListTile extends StatelessWidget {
  final IconData IconName;
  final String titleTitle;

  DrawerListTile({required this.IconName,required this.titleTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        title: Container(
          alignment: Alignment.center,
          height: 50,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(IconName, color: Color(0xFF00A7CC)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  titleTitle,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    letterSpacing: 1,
                    color: Color(0xff2a3d66),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
