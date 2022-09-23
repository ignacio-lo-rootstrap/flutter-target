import 'package:dio/dio.dart';
import 'package:flutter_target/data/entities/user.dart';
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
      String confirmPassword) async {
    try {
      final dio = getDio();

      final Map<String, dynamic> request = {
        "user": {
          "username": username,
          "email": email,
          "password": password,
          "confirm_password": confirmPassword,
          "gender": gender,
        }
      };

      final user = User(
        id: 1,
        email: email,
        fullName: password,
        username: username,
        gender: gender,
      );

      final response = await dio.post(NetConstants.signUp, data: request);

      print(response);
    } catch (e) {
      //TODO
    }
  }
}
