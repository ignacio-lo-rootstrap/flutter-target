import 'package:flutter_target/utils/custom_exception.dart';
import 'package:flutter_target/utils/resource.dart';

abstract class UserRepository {
  Future<Resource<bool, CustomException>> signUp(
    String username,
    String email,
    String gender,
    String password,
    String confirmPassword,
  );
}
