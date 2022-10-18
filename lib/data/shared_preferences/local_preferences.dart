import 'dart:convert';

import 'package:flutter_target/constants.dart';
import 'package:flutter_target/data/entities/user_credentials.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalPreferences {
  final SharedPreferences sharedPreferences;

  LocalPreferences(this.sharedPreferences);

  UserCredentials? getUserCredentials() {
    final json = sharedPreferences.getString(kUserCredentials);

    if (json == null || json.isEmpty) {
      return null;
    }

    return UserCredentials.fromMap(jsonDecode(json));
  }

  Future<bool> setUserCredentials(UserCredentials userCredentials) {
    return sharedPreferences.setString(
      kUserCredentials,
      jsonEncode(userCredentials.toMap()),
    );
  }

  int? getUserId() {
    return sharedPreferences.getInt(kUserId);
  }

  Future<bool> setUserId(int userId) {
    return sharedPreferences.setInt(kUserId, userId);
  }
}
