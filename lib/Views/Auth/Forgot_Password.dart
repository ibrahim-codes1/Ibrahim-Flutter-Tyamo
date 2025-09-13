import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tymao/Interfaces/Auth/forgot_password_services.dart';
import 'package:tymao/Views/Widgets/Auth/Auth_heading.dart';
import 'package:tymao/Views/Widgets/Auth/auth_text_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController _ForgotbtnController =
      RoundedLoadingButtonController();

  ForgotPasswordServices forgotPasswordServices = ForgotPasswordServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tyamo",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff000221),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(height: 60),
              AuthHeading(
                mainText: "Forgot your Password",
                subText: "",
                logo: "assets/images/logo.png",
                logoSize: 20.sp,
                fontSize: 16.sp,
              ),
              Container(
                width: 35.h,
                height: 20.h,
                child: Image.asset(
                  "assets/images/Lock.png",
                  filterQuality: FilterQuality.high,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "To request for a new one, type your enail address below. A\n link to reset the password will sent to that email",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(),
              ),
              const SizedBox(height: 40),
              AuthTextField(
                icon: Icons.alternate_email,
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                controller: forgotPasswordServices.emailController,
                obscureText: false,
                size: 14.sp,
              ),
              const SizedBox(height: 30),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _ForgotbtnController,
                  color: Color(0xff00C1AA),
                  onPressed: () {},
                  child: Text(
                    "SEND",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
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
