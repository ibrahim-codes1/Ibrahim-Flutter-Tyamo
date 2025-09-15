import 'package:flutter/material.dart';
import 'package:tymao/Controller/UserController/user_controller.dart';
import 'package:tymao/Views/Widgets/Auth/splash_loader_animation.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  UserController userController = UserController();

  @override
  Widget build(BuildContext context) {
    userController = Provider.of<UserController>(context, listen: false);

    if (userController.currentUser.uid == null) {
      FutureBuilder(
        future: userController.checkUserSignininfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(color: Colors.red);
          } else {
            return SplashLoaderAnimation();
          }
        },
      );
    } else {
      return Container(color: Colors.red);
    }
  }
}
