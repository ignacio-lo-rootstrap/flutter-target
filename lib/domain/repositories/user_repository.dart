import 'package:flutter_target/data/entities/user.dart';

abstract class UserRepository {
  void signUp(User user);

  void signIn(User user);
}
