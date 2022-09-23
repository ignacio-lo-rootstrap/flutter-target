class User {
  final int id;
  final String email;
  final String fullName;
  final String username;
  final String gender;
  final String? avatar;

  User({
    required this.id,
    required this.email,
    required this.fullName,
    required this.username,
    required this.gender,
    this.avatar,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'email': this.email,
      'fullName': this.fullName,
      'username': this.username,
      'gender': this.gender,
      'avatar': this.avatar,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      email: map['email'] as String,
      fullName: map['fullName'] as String,
      username: map['username'] as String,
      gender: map['gender'] as String,
      avatar: map['avatar'] as String,
    );
  }
}
