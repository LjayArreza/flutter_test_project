import 'package:flutter_test_project/app/services/dio_service.dart';
import 'package:flutter_test_project/data/model/error400_response.model.dart';
import 'package:flutter_test_project/data/model/login_response.model.dart';
import 'package:flutter_test_project/data/provider/network/api/api_endpoint.dart';
import 'package:flutter_test_project/data/provider/network/api/api_method.dart';
import 'package:logger/logger.dart';

class UserRepository {
  DioHttpService httpService = DioHttpService();
  final logger = Logger();
  UserRepository();

  Future<dynamic> loginUser(
      {required String email, required String password}) async {
    httpService.init();
    try {
      var response = await httpService.request(
        url: APIEndpoint.LOGIN,
        method: ApiMethod.POST,
        params: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        return LoginResponseModel.fromJson(response.data);
      } else {
        return Error400ResponseModel.fromJson(response.data);
      }
    } catch (e) {
      logger.e(e);
    }
  }
}
