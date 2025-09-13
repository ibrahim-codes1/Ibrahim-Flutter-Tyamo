import 'dart:async';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tymao/Views/Invitation/inivite_friend.dart';
import 'package:tymao/Views/Widgets/Auth/auth_text_field.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class ProfileSetup extends StatefulWidget {
  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _SetupbtnController =
      RoundedLoadingButtonController();

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          height: 100,
          width: 100,
          child: Image.asset(
            "assets/images/Tyamo.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xff000221)),
                child: Text(
                  "Profile Set up",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 2,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CircularProfileAvatar(
                "",
                backgroundColor: Colors.cyan,
                initialsText: Text(
                  "+",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                radius: 50,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: AuthTextField(
                  icon: Icons.face,
                  keyboardType: TextInputType.text,
                  labelText: "Your name",
                  controller: TextEditingController(),
                  obscureText: false,
                  size: 16,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: AuthTextField(
                  icon: Icons.alternate_email,
                  keyboardType: TextInputType.text,
                  controller: TextEditingController(),
                  labelText: "Your Username",
                  obscureText: false,
                  size: 16,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: isMale ? Colors.cyan : Colors.grey,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 9.0),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                      child: Icon(Icons.male, color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: isMale ? Colors.purple : Colors.grey,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 9.0),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                      child: Icon(Icons.female, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 250,
                child: Hero(
                  tag: "Auth",
                  child: RoundedLoadingButton(
                    controller: _SetupbtnController,
                    color: Color(0xff00C1AA),
                    borderRadius: 10,
                    onPressed: () {
                      Timer(Duration(seconds: 3), () {
                      _SetupbtnController.success();
                      Navigator.pushReplacement(
                        context,
                      PageTransition(
                      type: PageTransitionType.fade,
                      child: IniviteFriend(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Next",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
