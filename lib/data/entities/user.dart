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
}
