import 'package:flutter_test_project/data/repository/user.repository.dart';
import 'package:flutter_test_project/presentation/register/controller/register.controller.dart';
import 'package:get/get.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController(UserRepository()));
  }
}
