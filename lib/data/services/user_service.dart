import 'package:dio/dio.dart';
import 'package:flutter_target/data/utils/net_constants.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_target/data/entities/user.dart';
import 'package:flutter_target/domain/repositories/user_repository.dart';

class UserService implements UserRepository {
  final options = BaseOptions(baseUrl: NetConstants.baseUrl);

  Dio getDio() {
    final dio = Dio(options);

    return dio;
  }

  @override
  void signUp(User user) async {
    // final response = http.post(url);
    // final response2 = getDio().post(NetConstants.signUp);
  }

  @override
  void signIn(User user) {
    final url = Uri.https(NetConstants.baseUrl, NetConstants.signIn);

    final response = http.post(url);
    final response2 = getDio().post(NetConstants.signIn);

    print(response);
    print(response2);
  }
}
