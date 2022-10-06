class UserSignUp {
  final String username;
  final String email;
  final String gender;
  final String password;
  final String confirmPassword;

  UserSignUp({
    required this.username,
    required this.email,
    required this.gender,
    required this.password,
    required this.confirmPassword,
  });

  Map<String, dynamic> toMap() {
    return {
      'user': {
        'username': username,
        'email': email,
        'gender': gender,
        'password': password,
        'password_confirmation': confirmPassword,
      }
    };
  }

  factory UserSignUp.fromMap(Map<String, dynamic> map) {
    return UserSignUp(
      username: map['username'] as String,
      email: map['email'] as String,
      gender: map['gender'] as String,
      password: map['password'] as String,
      confirmPassword: map['password_confirmation'] as String,
    );
  }
}
