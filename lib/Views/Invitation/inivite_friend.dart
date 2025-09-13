import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tymao/Views/Invitation/accept_invite.dart';

class IniviteFriend extends StatelessWidget {
  const IniviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            height: 80,
            width: double.infinity,
            child: Image.asset(
              "assets/images/Tyamo.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: null,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                PageTransition(
                type: PageTransitionType.rightToLeft,
                child: AcceptInvite(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Icon(
                  Icons.padding_outlined,
                  color: Colors.purple,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 27.sp,
              color: Color(0xff00D7CC),
              child: Text(
                "Find your friend",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  fontSize: 16.sp,
                ),
                textScaleFactor: 1,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 25,
                            horizontal: 20,
                          ),
                          hintText: "Hi Ibrahim, Tyepe an exact username",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset("assets/images/invitation.png"),
            ),
            Text(
              "Search for your friend on Tyamo or\n invite your friend to tyamo",
              style: GoogleFonts.nunito(
                color: Colors.grey,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Invite a friend",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 14.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



















