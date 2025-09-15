import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tymao/Controller/UserController/user_controller.dart';
import 'package:tymao/Interfaces/Auth/login_services.dart';
import 'package:tymao/Views/Auth/Forgot_Password.dart';
import 'package:tymao/Views/Auth/Register.dart';
import 'package:tymao/Views/Profile/profile_setup.dart';
import 'package:tymao/Views/Widgets/Auth/Auth_heading.dart';
import 'package:tymao/Views/Widgets/Auth/Auth_text_field.dart';
import 'dart:async';
import 'package:responsive_sizer/responsive_sizer.dart';

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _loginbtnController =
      RoundedLoadingButtonController();

  LoginServices loginServices = LoginServices();

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
                subText: "To connect with \nyour partner",
                logo: "assets/images/logo.png",
                logoSize: 20.sp,
                fontSize: 16.sp,
              ),
              SizedBox(height: 30),
              AuthTextField(
                icon: Icons.alternate_email,
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                controller: loginServices.emailController,
                obscureText: false,
                size: 14.sp,
              ),
              SizedBox(height: 30),
              AuthTextField(
                icon: Icons.password,
                keyboardType: TextInputType.text,
                labelText: "Password",
                controller: loginServices.passController,
                obscureText: true,
                size: 14.sp,
              ),
              SizedBox(height: 20),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _loginbtnController,
                  color: Color(0xff00C1AA),
                  onPressed: () {
                    UserController().loginUser(
                      loginServices.emailController.text,
                      loginServices.passController.text,
                    );

                    // Timer(Duration(seconds: 3), () {
                    //   _loginbtnController.success();
                    //   Navigator.pushReplacement(
                    //     context,
                    //     PageTransition(
                    //       type: PageTransitionType.fade,
                    //       child: ProfileSetup(),
                    //     ),
                    //   );
                    // });
                  },
                  child: Text(
                    "Login",
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: ForgotPassword(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot Password",
                    style: GoogleFonts.poppins(
                      color: const Color(0xffC12720),
                      fontWeight: FontWeight.normal,
                      fontSize: 13.sp,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
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
                          child: Register(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
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
