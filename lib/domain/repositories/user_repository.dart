import 'package:flutter_target/data/entities/user.dart';

abstract class UserRepository {
  void signUp(
    String username,
    String email,
    String gender,
    String password,
    String confirmPassword,
  );

  void signIn(User user);
}
