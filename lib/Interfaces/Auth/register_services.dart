import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tymao/Controller/UserController/user_controller.dart';

class RegisterServices {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController comfirmpassController = TextEditingController();

  UserController currentUser = UserController();

  // Future<bool> registerUserToFirebase(String email, String passwword) {}
}
