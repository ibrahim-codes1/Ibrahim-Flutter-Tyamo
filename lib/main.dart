import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tymao/Views/Auth/Forgot_Password.dart';
import 'package:tymao/Views/Auth/Login.dart';
import 'package:tymao/Views/Auth/Register.dart';
import 'package:tymao/Views/Features/Album/Album_main.dart';
import 'package:tymao/Views/Features/Album/Album_post.dart';
import 'package:tymao/Views/Features/Album/My_Album.dart';
import 'package:tymao/Views/Features/DeviceInfo/Battery%20Info/BattteryInfo.dart';
import 'package:tymao/Views/Features/DeviceInfo/Device_Info.dart';
import 'package:tymao/Views/Features/DeviceInfo/GeneralInfo/General_info.dart';
import 'package:tymao/Views/Homepage/Dashboard/Dashboard.dart';
import 'package:tymao/Views/Homepage/Homepage.dart';
import 'package:tymao/Views/Invitation/accept_invite.dart';
import 'package:tymao/Views/Invitation/inivite_friend.dart';
import 'package:tymao/Views/Profile/Profile_Setting.dart';
import 'package:tymao/Views/Profile/profile_setup.dart';
import 'package:tymao/firebase_options.dart';

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Tyamo',
          home: Register(),
        );
      },
    );
  }
}
