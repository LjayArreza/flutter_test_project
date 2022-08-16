import 'package:flutter_test_project/data/repository/user.repository.dart';
import 'package:flutter_test_project/presentation/login/controller/login.controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(UserRepository()));
  }
}
