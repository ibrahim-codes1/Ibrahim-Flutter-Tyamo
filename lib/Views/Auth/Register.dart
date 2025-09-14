import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tymao/Controller/UserController/user_controller.dart';
import 'package:tymao/Interfaces/Auth/register_services.dart';
import 'package:tymao/Views/Auth/Login.dart';
import 'package:tymao/Views/Widgets/Auth/Auth_heading.dart';
import 'package:tymao/Views/Widgets/Auth/Auth_text_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tymao/Controller/UserController/user_controller.dart';
import 'package:tymao/Interfaces/Auth/register_services.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _RegisterbtnController =
      RoundedLoadingButtonController();

  RegisterServices registerServices = RegisterServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tyamo",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff000221),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              AuthHeading(
                mainText: "Sign in to Tyamo",
                subText: "Get connected with \nyour partner",
                logo: "assets/images/logo.png",
                logoSize: 20.sp,
                fontSize: 12.sp,
              ),
              SizedBox(height: 50),
              AuthTextField(
                controller: registerServices.emailController,
                icon: Icons.alternate_email,
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                size: 14.sp,
                obscureText: false,
              ),
              SizedBox(height: 20),
              AuthTextField(
                controller: registerServices.passController,
                icon: Icons.password,
                keyboardType: TextInputType.text,
                labelText: "Password",
                obscureText: true,
                size: 14.sp,
              ),
              SizedBox(height: 20),
              AuthTextField(
                icon: Icons.lock_reset,
                keyboardType: TextInputType.text,
                labelText: "Confirm Password",
                controller: registerServices.comfirmpassController,
                obscureText: true,
                size: 14.sp,
              ),
              SizedBox(height: 30),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _RegisterbtnController,
                  color: Color(0xff00C1AA),
                  onPressed: () {
                    print("Entered Emial" + registerServices.emailController.text);
                    print("Entered Password" + registerServices.passController.text);
                    print("Entered Confirm Password" + registerServices.comfirmpassController.text);
                  },
                  child: Text(
                    "Register",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "By registering, you agree to our terms and conditions",
                  style: GoogleFonts.poppins(
                    color: Color(0xff838080),
                    fontWeight: FontWeight.w500,
                    fontSize: 11.sp,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Registered? ",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      color: const Color(0xff5A5B5B),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: Login(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: const Color(0xff2F76EA),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
