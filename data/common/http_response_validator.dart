import 'package:dio/dio.dart';
import 'package:momenzadhpeojectlink/common/exceptions.dart';

mixin HttpResponseValidator{
  validateResponse(Response response) {
    if (response.statusCode != 200) {
      throw AppException();
    }
  }
}