import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tymao/Model/my_user.dart';
import 'package:tymao/Service/user_database.dart';

class UserDatabase {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<bool> createUserInDb(MyUser user) async {
    try {
      await firestore.collection("users").doc(user.uid).set({
        "user": user.uid,
        "email": user.email,
        "password": user.password,
        "username": user.username,
        "displayName": user.displayName,
        "avatarurl": user.avatarUrl,
        "ChatRoomId": user.chatRoomId,
        "friendUid": user.friendUid,
        "gender": user.gender,
        "phone": user.phone,
        "accountCreated": Timestamp.now(),
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<MyUser> getUserInfoById(String uid) async {
    MyUser myUser = MyUser();
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await firestore
        .collection("users")
        .doc("kDv2dKC8bZRsEbqT7d8xMUlxU3G2")
        .get();

    myUser.uid = documentSnapshot.data()!["uid"];
    myUser.email = documentSnapshot.data()!["email"];
    myUser.avatarUrl = documentSnapshot.data()!["avatarUrl"];
    myUser.username = documentSnapshot.data()!["username"];
    myUser.displayName = documentSnapshot.data()!["displayName"];
    myUser.friendUid = documentSnapshot.data()!["friendUid"];
    myUser.chatRoomId = documentSnapshot.data()!["chatRoomId"];
    myUser.gender = documentSnapshot.data()!["gender"];
    myUser.phone = documentSnapshot.data()!["phone"];
    
    return myUser;
  }
}
