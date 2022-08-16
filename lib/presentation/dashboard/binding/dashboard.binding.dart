import 'package:flutter_test_project/domain/repositories/user.repository.dart';
import 'package:flutter_test_project/presentation/dashboard/controller/dashboard.controller.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
        () => DashboardController(UserRepository()));
  }
}
