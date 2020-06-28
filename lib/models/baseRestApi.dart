import 'package:dio/dio.dart';
import 'package:euroad_app_api/models/user.dart';
import 'package:retrofit/http.dart';

abstract class BaseRestApi {
  BaseRestApi(Dio dio, {String baseUrl});

  Future<List<dynamic>> getMany(String path) async {
    return await Dio().get<List<dynamic>>(path).then((value) => value.data);
  }
}
