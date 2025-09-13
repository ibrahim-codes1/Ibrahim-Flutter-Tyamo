class MyUser {
  String? uid;
  String? email;
  String? password;
  String? username;
  String? displayName;
  String? avatarUrl;
  String? friendUid;
  String? chatRoomId;
  String? gender;
  String? phone;
  DateTime? accountCreated;

  MyUser({
    this.accountCreated,
    this.avatarUrl,
    this.chatRoomId,
    this.displayName,
    this.email,
    this.friendUid,
    this.gender,
    this.password,
    this.phone,
    this.uid,
    this.username,
  });
}
