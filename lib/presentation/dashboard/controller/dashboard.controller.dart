import 'package:flutter_test_project/data/repository/user.repository.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  UserRepository userRepo;
  DashboardController(this.userRepo);
}
