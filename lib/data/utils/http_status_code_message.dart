import 'dart:io';

import 'package:flutter_target/constants.dart';

String networkErrorMessage(int statusCode) {
  switch (statusCode) {
    case HttpStatus.unauthorized:
      return kInvalidCredentials;
    case 0:
    default:
      return kNetworkError;
  }
}
