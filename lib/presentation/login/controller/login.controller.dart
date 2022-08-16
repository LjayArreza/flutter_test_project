import 'package:flutter_test_project/data/repository/user.repository.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  UserRepository userRepo;
  LoginController(this.userRepo);
}
