import 'package:firebase_auth/firebase_auth.dart';
import 'package:tymao/Model/my_user.dart';

class UserController {
  FirebaseAuth auth = FirebaseAuth.instance;

  void registerUser(String e, String p) async {
    MyUser user = MyUser();
    UserCredential authResult = await auth.createUserWithEmailAndPassword(
      email: e,
      password: p,
    );
  }
}
