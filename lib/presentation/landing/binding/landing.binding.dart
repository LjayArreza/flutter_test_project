import 'package:flutter_test_project/data/repository/user.repository.dart';
import 'package:flutter_test_project/presentation/landing/controller/landing.controller.dart';
import 'package:get/get.dart';

class LandingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(() => LandingController(UserRepository()));
  }
}
