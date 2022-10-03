import 'package:dio/dio.dart';
import 'package:flutter_target/data/entities/user_sign_up.dart';
import 'package:flutter_target/data/utils/net_constants.dart';
import 'package:flutter_target/domain/repositories/user_repository.dart';

class UserService implements UserRepository {
  final options = BaseOptions(
      baseUrl: NetConstants.baseUrl,
      connectTimeout: NetConstants.connectTimeout,
      receiveTimeout: NetConstants.receiveTimeout,
      contentType: Headers.jsonContentType,
      headers: {Headers.acceptHeader: Headers.jsonContentType});

  Dio getDio() {
    final dio = Dio(options);

    return dio;
  }

  @override
  void signUp(String username, String email, String gender, String password,
      String confirmPassword) async {
    try {
      final dio = getDio();

      final request = UserSignUp(
              username: username,
              email: email,
              gender: gender,
              password: password,
              confirmPassword: confirmPassword)
          .toMap();

      final response = await dio.post(NetConstants.signUp, data: request);

      // TODO: Implement response
    } catch (e) {
      // TODO: Implement response
    }
  }
}
