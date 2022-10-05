class UserSignIn {
  final String email;
  final String password;

  UserSignIn({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      // 'email': email,
      // 'password': password,
      'user': {
        'email': email,
        'password': password,
      }
    };
  }

  factory UserSignIn.fromMap(Map<String, dynamic> map) {
    return UserSignIn(
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }
}
