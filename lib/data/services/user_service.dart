import 'package:dio/dio.dart';
import 'package:flutter_target/data/entities/user_credentials.dart';
import 'package:flutter_target/data/entities/user_sign_up.dart';
import 'package:flutter_target/data/shared_preferences/LocalPreferences.dart';
import 'package:flutter_target/data/utils/net_constants.dart';
import 'package:flutter_target/domain/repositories/user_repository.dart';
import 'package:flutter_target/utils/custom_exception.dart';
import 'package:flutter_target/utils/resource.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService implements UserRepository {
  late LocalPreferences localPreferences;

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
  Future<Resource<bool, CustomException>> signUp(String username, String email,
      String gender, String password, String confirmPassword) async {
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

      final accessToken = response.headers.value(NetConstants.authHeader);
      final client = response.headers.value(NetConstants.clientHeader);
      final uid = response.headers.value(NetConstants.uidHeader);

      if (accessToken == null || client == null || uid == null) {
        return Failure(CustomException());
      }

      final userCredentials = UserCredentials(
        accessToken: accessToken,
        client: client,
        uid: uid,
      );

      localPreferences =
          LocalPreferences(await SharedPreferences.getInstance());

      localPreferences.setUserCredentials(userCredentials);
      localPreferences.setUserId(response.data["data"]["id"]);

      return Success(true);
    } catch (e) {
      return Failure(CustomException(e.toString()));
    }
  }
}
