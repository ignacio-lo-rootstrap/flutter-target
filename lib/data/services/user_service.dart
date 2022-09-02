import 'package:dio/dio.dart';
import 'package:flutter_target/data/utils/net_constants.dart';
import 'package:flutter_target/domain/repositories/user_repository.dart';

class UserService implements UserRepository {
  final options = BaseOptions(baseUrl: NetConstants.baseUrl);

  Dio getDio() {
    final dio = Dio(options);

    return dio;
  }

  @override
  void signUp(String username, String email, String gender, String password,
      String confirmPassword) {
    try {
      //TODO
    } catch (e) {
      //TODO
    }
  }
}
