class UserCredentials {
  final String accessToken;
  final String uid;
  final String client;

  UserCredentials(
      {required this.accessToken, required this.uid, required this.client});

  Map<String, dynamic> toMap() {
    return {
      'accessToken': accessToken,
      'uid': uid,
      'client': client,
    };
  }

  factory UserCredentials.fromMap(Map<String, dynamic> map) {
    return UserCredentials(
      accessToken: map['accessToken'] as String,
      uid: map['uid'] as String,
      client: map['client'] as String,
    );
  }
}
