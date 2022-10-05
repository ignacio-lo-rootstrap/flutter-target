class User {
  final int id;
  final String email;
  final String fullName;
  final String username;
  final String gender;
  final String password;
  final String confirmPassword;
  final String avatar;

  User({
    required this.id,
    required this.email,
    required this.fullName,
    required this.username,
    required this.gender,
    required this.password,
    required this.confirmPassword,
    required this.avatar,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'fullName': fullName,
      'username': username,
      'gender': gender,
      'password': password,
      'confirmPassword': confirmPassword,
      'avatar': avatar,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      email: map['email'] as String,
      fullName: map['fullName'] as String,
      username: map['username'] as String,
      gender: map['gender'] as String,
      password: map['password'] as String,
      confirmPassword: map['confirmPassword'] as String,
      avatar: map['avatar'] as String,
    );
  }
}
